package com.baoxian.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class User {

    //用户编号
    private String userid;
    //用户姓名
    private String username;
    //用户账号密码
    private String password;
    //性别
    private String sex;
    //手机号
    private String phone;
    //身份
    private String level;
    //邮箱
    private String email;

}
