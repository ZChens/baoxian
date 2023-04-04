package com.baoxian.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class Salesman {

    //业务员工号
    private String salesmanid;
    //业务员姓名
    private String salesmanname;
    //业务员账号密码
    private String password;
    //性别
    private String sex;
    //手机号
    private String phone;
    //身份权限
    private String level;
}
