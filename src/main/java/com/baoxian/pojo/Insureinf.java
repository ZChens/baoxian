package com.baoxian.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class Insureinf {

    //保险编号
    private String insuranceid;
    //保险名称
    private String insurancename;
    //保险类别
    private String insurancetype;
    //用户id
    private String userid;
    //用户姓名
    private String username;
    //业务员姓名
    private String salesmanname;
    //审核状态
    private String checkstate;
    //审核留言
    private String checkmessage;
    //支付状态
    private String paystate;
    //生效时间
    private Date starttime;
    //结束时间
    private String endtime;
    //最低赔偿
    private String minpay;
    //最高赔偿
    private String maxpay;
    //保险状态
    private String finalstate;

}
