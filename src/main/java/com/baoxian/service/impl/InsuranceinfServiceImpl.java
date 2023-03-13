package com.baoxian.service.impl;

import com.baoxian.dao.InsuranceinfMapper;
import com.baoxian.pojo.Insuranceinf;
import com.baoxian.service.InsuranceinfService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class InsuranceinfServiceImpl implements InsuranceinfService {

    @Autowired
    private InsuranceinfMapper insuranceinfMapper;


    @Override
    public HashMap<String,Object> SelectInsuranceinfByAll(Insuranceinf insuranceinf, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Insuranceinf> list = insuranceinfMapper.SelectInsuranceinfByAll(insuranceinf);
        PageInfo<Insuranceinf> info = new PageInfo<>(list);
        HashMap<String,Object> map = new HashMap<>();
        map.put("data",info.getList());//返回指定页面数据
        map.put("nowPage",pageNum);//返回当前页面
        map.put("total",((int)info.getTotal()+pageSize-1)/pageSize);//返回总页面数
        return map;
    }
}
