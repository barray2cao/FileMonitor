package com.kanglefucn.userInfo.dao.model;

import java.util.Date;

public class HWstudy {
    //检查号
    private String studyID;
    //检查日期
    private Date   studyDate;
    //检查医生
    private String studyDoctor;
    //检查描述
    private String studyDescription;
    //检查结论
    private String conclusion;
    //报告医生
    private String reportDoctor;
    //报告日期
    private Date   reportDate;
    //报告状态
    private String reportStatus;
    //审核医生
    private String auditDoctor;
    //审核日期
    private String auditDate;
    //审核状态
    private String auditStatus;
    //审核结果
    private String auditResult;
    //报告图片路径
    private String url;

    public String getStudyID() {
        return studyID;
    }

    public void setStudyID(String studyID) {
        this.studyID = studyID;
    }

    public Date getStudyDate() {
        return studyDate;
    }

    public void setStudyDate(Date studyDate) {
        this.studyDate = studyDate;
    }

    public String getStudyDoctor() {
        return studyDoctor;
    }

    public void setStudyDoctor(String studyDoctor) {
        this.studyDoctor = studyDoctor;
    }

    public String getStudyDescription() {
        return studyDescription;
    }

    public void setStudyDescription(String studyDescription) {
        this.studyDescription = studyDescription;
    }

    public String getConclusion() {
        return conclusion;
    }

    public void setConclusion(String conclusion) {
        this.conclusion = conclusion;
    }

    public String getReportDoctor() {
        return reportDoctor;
    }

    public void setReportDoctor(String reportDoctor) {
        this.reportDoctor = reportDoctor;
    }

    public Date getReportDate() {
        return reportDate;
    }

    public void setReportDate(Date reportDate) {
        this.reportDate = reportDate;
    }

    public String getReportStatus() {
        return reportStatus;
    }

    public void setReportStatus(String reportStatus) {
        this.reportStatus = reportStatus;
    }

    public String getAuditDoctor() {
        return auditDoctor;
    }

    public void setAuditDoctor(String auditDoctor) {
        this.auditDoctor = auditDoctor;
    }

    public String getAuditDate() {
        return auditDate;
    }

    public void setAuditDate(String auditDate) {
        this.auditDate = auditDate;
    }

    public String getAuditStatus() {
        return auditStatus;
    }

    public void setAuditStatus(String auditStatus) {
        this.auditStatus = auditStatus;
    }

    public String getAuditResult() {
        return auditResult;
    }

    public void setAuditResult(String auditResult) {
        this.auditResult = auditResult;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "HWstudy{" +
                "studyID='" + studyID + '\'' +
                ", studyDate=" + studyDate +
                ", studyDoctor='" + studyDoctor + '\'' +
                ", studyDescription='" + studyDescription + '\'' +
                ", conclusion='" + conclusion + '\'' +
                ", reportDoctor='" + reportDoctor + '\'' +
                ", reportDate=" + reportDate +
                ", reportStatus='" + reportStatus + '\'' +
                ", auditDoctor='" + auditDoctor + '\'' +
                ", auditDate='" + auditDate + '\'' +
                ", auditStatus='" + auditStatus + '\'' +
                ", auditResult='" + auditResult + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}

