package com.kanglefucn.userInfo.dao.mapper;

import com.kanglefucn.userInfo.dao.model.HWstudy;
import com.kanglefucn.userInfo.dao.model.ThermalImaging;

public interface ThermalImagingMapper {
    int save();

    ThermalImaging getUserInfoByID(String StudyID);

    HWstudy getHWstudyByStudyID(String StudyID);
}