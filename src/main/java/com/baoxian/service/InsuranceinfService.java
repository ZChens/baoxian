package com.baoxian.service;

import com.baoxian.pojo.Insuranceinf;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface InsuranceinfService {


    //分页查询部分
    HashMap<String,Object> SelectInsuranceinfByAll(Insuranceinf insuranceinf, Integer pageNum, Integer pageSize);
}
