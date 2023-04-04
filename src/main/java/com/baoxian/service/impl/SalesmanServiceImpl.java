package com.baoxian.service.impl;

import com.baoxian.dao.SalesmanMapper;
import com.baoxian.pojo.Salesman;
import com.baoxian.pojo.User;
import com.baoxian.service.SalesmanService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class SalesmanServiceImpl implements SalesmanService {

    @Autowired
    private SalesmanMapper salesmanMapper;

    @Override
    public Salesman SalesmanLogin(Salesman record) {
        return salesmanMapper.SalesmanLogin(record);
    }

    @Override
    public Salesman SelectBySalesmanName(String salesmanname) {
        return salesmanMapper.SelectBySalesmanName(salesmanname);
    }

    @Override
    public Integer DeleteSalesmanById(String salesmanid) {
        return salesmanMapper.DeleteSalesmanById(salesmanid);
    }

    @Override
    public HashMap<String, Object> AllSalesmanList(Salesman salesman, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Salesman> list = salesmanMapper.AllSalesmanList(salesman);
        PageInfo<Salesman> info = new PageInfo<>(list);
        HashMap<String,Object> map = new HashMap<>();
        map.put("data",info.getList());//返回指定页面数据
        map.put("nowPage",pageNum);//返回当前页面
        map.put("total",((int)info.getTotal()+pageSize-1)/pageSize);//返回总页面数
        return map;
    }
}
