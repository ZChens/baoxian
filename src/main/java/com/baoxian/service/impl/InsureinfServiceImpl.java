package com.baoxian.service.impl;

import com.baoxian.dao.InsureinfMapper;
import com.baoxian.pojo.Insuranceinf;
import com.baoxian.pojo.Insureinf;
import com.baoxian.service.InsureinfService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
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
    public HashMap<String,Object> AllInsureinfList(Insureinf insureinf, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Insureinf> list = insureinfMapper.AllInsureinfList(insureinf);
        PageInfo<Insureinf> info = new PageInfo<>(list);
        HashMap<String,Object> map = new HashMap<>();
        map.put("data",info.getList());//返回指定页面数据
        map.put("nowPage",pageNum);//返回当前页面
        map.put("total",((int)info.getTotal()+pageSize-1)/pageSize);//返回总页面数
        return map;
    }

    @Override
    public HashMap<String, Object> SelectInsureById(Insureinf userid, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Insureinf> list = insureinfMapper.AllInsureinfList(userid);
        PageInfo<Insureinf> info = new PageInfo<>(list);
        HashMap<String,Object> map = new HashMap<>();
        map.put("data",info.getList());//返回指定页面数据
        map.put("nowPage",pageNum);//返回当前页面
        map.put("total",((int)info.getTotal()+pageSize-1)/pageSize);//返回总页面数
        return map;
    }

    @Override
    public Integer Updatepaystate(Insureinf insureinfid) {
        return insureinfMapper.Updatepaystate(insureinfid);
    }

}
