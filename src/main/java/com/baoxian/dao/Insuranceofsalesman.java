package com.baoxian.dao;

import org.apache.ibatis.annotations.Select;

public interface Insuranceofsalesman {
    @Select("select * from insuranceofsalesman where insurancetype=#{insurancetype}")
    Insuranceofsalesman selectsalesmanname(String insurancetype);
}
