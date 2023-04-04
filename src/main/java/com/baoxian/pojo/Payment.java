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
public class Payment {

    private Integer payid;

    private String userid;

    private String username;

    private String insurancename;

    private String insurancetype;

    private String minpay;

    private String maxpay;

    private String pstate;

}
