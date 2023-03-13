package com.baoxian.service.impl;

import com.baoxian.dao.SalesmanMapper;
import com.baoxian.pojo.Salesman;
import com.baoxian.service.SalesmanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    public int DeleteSalesmanById(Integer salesmanid) {
        return salesmanMapper.DeleteSalesmanById(salesmanid);
    }
}
