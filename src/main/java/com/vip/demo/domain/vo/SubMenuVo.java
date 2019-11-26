package com.vip.demo.domain.vo;

import com.vip.demo.domain.entity.SubMenu;
import com.vip.demo.domain.entity.SubMenu1;
import lombok.Data;

import java.util.List;

/**
 * @author yuzhi
 */
@Data
public class SubMenuVo extends SubMenu {
    List<SubMenu1>  subMenu1List;
}
