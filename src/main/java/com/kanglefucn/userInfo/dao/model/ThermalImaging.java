package com.kanglefucn.userInfo.dao.model;

import java.util.Date;

public class ThermalImaging {
    //id
    private Long   nPatientID;
    //检查号
    private String StudyID;
    //用户姓名
    private String name;
    //用户性别
    private String sex;
    //用户年龄
    private String cAge;
    //用户创建时间
    private Date   cDate;
    //用户出生年月日
    private String brithday;
    private String cCheckProject;
    private String cOther;
    private String c45AreaFlag;

    public Long getnPatientID() {
        return nPatientID;
    }

    public void setnPatientID(Long nPatientID) {
        this.nPatientID = nPatientID;
    }

    public String getStudyID() {
        return StudyID;
    }

    public void setStudyID(String studyID) {
        StudyID = studyID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getcAge() {
        return cAge;
    }

    public void setcAge(String cAge) {
        this.cAge = cAge;
    }

    public Date getcDate() {
        return cDate;
    }

    public void setcDate(Date cDate) {
        this.cDate = cDate;
    }

    public String getBrithday() {
        return brithday;
    }

    public void setBrithday(String brithday) {
        this.brithday = brithday;
    }

    public String getcCheckProject() {
        return cCheckProject;
    }

    public void setcCheckProject(String cCheckProject) {
        this.cCheckProject = cCheckProject;
    }

    public String getcOther() {
        return cOther;
    }

    public void setcOther(String cOther) {
        this.cOther = cOther;
    }

    public String getC45AreaFlag() {
        return c45AreaFlag;
    }

    public void setC45AreaFlag(String c45AreaFlag) {
        this.c45AreaFlag = c45AreaFlag;
    }
}