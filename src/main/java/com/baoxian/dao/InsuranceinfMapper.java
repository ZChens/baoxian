package com.baoxian.dao;

import com.baoxian.pojo.Insuranceinf;

import java.util.List;
import java.util.Map;


public interface InsuranceinfMapper {

    //保险总列表分页查询，以及模糊查询搜索框
    List<Insuranceinf> SelectInsuranceinfByAll(Insuranceinf insuranceinf);

}
