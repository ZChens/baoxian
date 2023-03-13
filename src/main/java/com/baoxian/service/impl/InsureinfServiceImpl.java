package com.baoxian.service.impl;

import com.baoxian.dao.InsureinfMapper;
import com.baoxian.pojo.Insureinf;
import com.baoxian.service.InsureinfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class InsureinfServiceImpl implements InsureinfService {

    @Autowired
    private InsureinfMapper insureinfMapper;

    @Override
    public int AddInsureinf(Insureinf insureinf) {
        return insureinfMapper.AddInsureinf(insureinf);
    }

    @Override
    public List<Insureinf> AllInsureinfList(Map<String, Object> map) {
        return insureinfMapper.AllInsureinfList(map);
    }
}
