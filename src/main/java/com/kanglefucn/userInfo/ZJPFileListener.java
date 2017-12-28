package com.kanglefucn.userInfo;

import com.kanglefucn.userInfo.service.CommonAction;
import org.apache.commons.io.monitor.FileAlterationListener;
import org.apache.commons.io.monitor.FileAlterationObserver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;

public class ZJPFileListener implements FileAlterationListener {

    private static Logger _log = LoggerFactory.getLogger(ZJPFileListener.class);

    ZJPFileMonitor monitor = null;

    @Override
    public void onStart(FileAlterationObserver observer) {

    }

    //文件创建调用的方法
    @Override
    public void onFileCreate(File file) {
        System.out.println("onFileCreate:" + file.getName());
        CommonAction con = new CommonAction();
        con.testCron1(file);
    }

    //文件改变调用的方法
    @Override
    public void onFileChange(File file) {
        System.out.println("onFileCreate : " + file.getName());
        CommonAction con = new CommonAction();
        con.testCron1(file);
    }

    //文件删除调用的方法
    @Override
    public void onFileDelete(File file) {
        _log.info("------日志-------");
        System.out.println("onFileDelete :" + file.getName());
    }

    //字文件夹创建
    @Override
    public void onDirectoryCreate(File directory) {
        System.out.println("onDirectoryCreate:" + directory.getName());
    }

    //子文件夹改变
    @Override
    public void onDirectoryChange(File directory) {
        System.out.println("onDirectoryChange:" + directory.getName());
    }

    //子文件夹删除
    @Override
    public void onDirectoryDelete(File directory) {
        System.out.println("onDirectoryDelete:" + directory.getName());
    }


    @Override
    public void onStop(FileAlterationObserver observer) {
        //System.out.println("onStop");
    }
}