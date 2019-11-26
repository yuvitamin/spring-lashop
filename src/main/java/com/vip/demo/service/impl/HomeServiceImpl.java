package com.vip.demo.service.impl;


import com.vip.demo.domain.vo.CategoryVo;
import com.vip.demo.mapper.CategoryMapper;
import com.vip.demo.service.HomeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author yuzhi
 */
@Service
@Slf4j
public class HomeServiceImpl implements HomeService {
    @Resource
    CategoryMapper categoryMapper;

    @Override
    public List<CategoryVo> getcontents() {
        List<CategoryVo> categoryVoList = categoryMapper.findcontents();
        return categoryVoList;
    }
}
