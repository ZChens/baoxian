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
public class Insuranceinf {

    //保险编号
    private String insuranceid;
    //保险名称
    private String insurancename;
    //保险类型
    private String insurancetype;
    //保险时效期
    private String insuredate;
    //价格
    private String money;
    //最低赔偿
    private String minpay;
    //最高赔偿
    private String maxpay;


}
