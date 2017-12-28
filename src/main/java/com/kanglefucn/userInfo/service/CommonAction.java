package com.kanglefucn.userInfo.service;

import com.kanglefucn.userInfo.DBHelper;
import com.kanglefucn.userInfo.HttpUtil;
import com.kanglefucn.userInfo.Util;
import com.kanglefucn.userInfo.dao.mapper.ThermalImagingMapper;
import com.kanglefucn.userInfo.dao.model.ThermalImaging;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.imageio.stream.FileImageInputStream;
import java.io.*;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

@SuppressWarnings("SpringJavaAutowiringInspection")
@Component
@Transactional
public class CommonAction {
    private static Logger _log = LoggerFactory.getLogger(CommonAction.class);

    public void testCron1(File file) {
        try {
            ApplicationContext context = new ClassPathXmlApplicationContext("classpath:application-web.xml");
            ThermalImagingMapper mapper = context.getBean(ThermalImagingMapper.class);
            String str = (file.getName()).substring(0, file.getName().length() - 6);
            ThermalImaging thermalImaging = mapper.getUserInfoByID(str);
            System.out.println(thermalImaging.getName());
            DBHelper helper = new DBHelper();
            System.out.println("11");
            if (thermalImaging != null) {
                //查询用户在数据库存不存在
                String selectSql = "select * from t_thermal_imaging where StudyID = " + thermalImaging.getStudyID();
                helper.pst = helper.conn.prepareStatement(selectSql);
                ResultSet resultSet = helper.pst.executeQuery();
                //不存在把改用户保存到数据库
                System.out.println(resultSet);
                if (!resultSet.next()) {
                    _log.info("保存用户到远程数据库");
                    String insertSql = "insert t_thermal_imaging (StudyID,name,sex,cAge,cDate,brithday,cCheckProject) VALUES ("
                            + thermalImaging.getStudyID() + ",'" + Util.ISO8859toGBK(thermalImaging.getName()) + "','"+ Util.ISO8859toGBK(thermalImaging.getSex()) + "','"
                            + thermalImaging.getcAge() + "','" + thermalImaging.getcDate().toLocaleString() + "','"
                            + thermalImaging.getBrithday() +"','"+Util.ISO8859toGBK(thermalImaging.getcCheckProject()) + "')";
                    System.out.println("保存SQL--->" + insertSql);
                    helper.pst = helper.conn.prepareStatement(insertSql);
                    boolean b = helper.pst.execute();
                    if (b) {
                        System.out.println("保存失败");
                    } else {
                        System.out.println("保存成功");
                    }
                }
                //把对应的图片上传到oss
                uploadFile(file);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void uploadFile(File file) {
        byte[] data = null;
        FileImageInputStream input = null;
        try {
            input = new FileImageInputStream(file);
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            byte[] buf = new byte[(int) file.length()];
            int numBytesRead = 0;
            while ((numBytesRead = input.read(buf)) != -1) {
                output.write(buf, 0, numBytesRead);
            }
            data = output.toByteArray();
            output.close();
            input.close();
        } catch (FileNotFoundException ex1) {
            ex1.printStackTrace();
        } catch (IOException ex1) {
            ex1.printStackTrace();
        }
        // 请求上传图片接口
        Map<String, String> map = new HashMap<>();
        map.put("fileName", file.getName());
        String temp = new sun.misc.BASE64Encoder().encodeBuffer(data);
        map.put("fileByte", temp);
        String url = "http://crm.kanglefucn.com/api/healthymanage/thermalImgPicture/uploadImage";
        String date = HttpUtil.URLPost(url, map, HttpUtil.URL_PARAM_DECODECHARSET_UTF8);
        System.out.print(date + "......................");
//        JSONObject jsonObject = JSONObject.fromObject(date);
//        String imgUrl = jsonObject.opt("date").toString();
//        System.out.print(imgUrl + "..................");
    }

//    @Scheduled(cron = "0/5 * *  * * ? ")
//    public void show() {
//    }


    private String convertCharset(String s) {
        if (s != null) {
            try {
                int length = s.length();
                byte[] buffer = new byte[length];
                //0x81 to Unicode 0x0081, 0x8d to 0x008d, 0x8f to 0x008f, 0x90 to 0x0090, and 0x9d to 0x009d.
                for (int i = 0; i < length; ++i) {
                    char c = s.charAt(i);
                    if (c == 0x0081) {
                        buffer[i] = (byte) 0x81;
                    } else if (c == 0x008d) {
                        buffer[i] = (byte) 0x8d;
                    } else if (c == 0x008f) {
                        buffer[i] = (byte) 0x8f;
                    } else if (c == 0x0090) {
                        buffer[i] = (byte) 0x90;
                    } else if (c == 0x009d) {
                        buffer[i] = (byte) 0x9d;
                    } else {
                        buffer[i] = Character.toString(c).getBytes("cp1252")[0];
                    }
                }
                String result = new String(buffer, "utf-8");
                return result;
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
