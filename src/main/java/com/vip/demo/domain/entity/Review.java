package com.vip.demo.domain.entity;

import lombok.Data;

import java.util.Date;

@Data
public class Review {
    /**
     *
     */
    private Integer reviewId;

    /**
     *
     */
    private String content;

    /**
     *
     */
    private Date createDate;

    /**
     *
     */
    private Integer shopId;

    /**
     *
     */
    private Integer uid;
}

