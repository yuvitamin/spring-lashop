package com.vip.demo.domain.vo;

import com.vip.demo.domain.entity.Business;
import com.vip.demo.domain.entity.Category;
import lombok.Data;

import java.util.List;


/**
 * @author yuzhi
 */
@Data
public class CategoryVo extends Category {
    List<SubMenuVo> subMenuVoList;
    List<Business> businessList;
}
