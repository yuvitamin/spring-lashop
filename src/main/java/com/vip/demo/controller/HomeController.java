package com.vip.demo.controller;

import com.vip.demo.domain.vo.CategoryVo;
import com.vip.demo.service.HomeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import utils.Result;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author yuzhi
 */
@RestController
@Slf4j
@RequestMapping("/home")
public class HomeController {
    @Resource
    HomeService homeService;

    /**
     *商口分类展示
     * @return
     */
    @RequestMapping("/contents")
    public Result getcontentsData(){
        try {
            List<CategoryVo> categoryVoList = homeService.getcontents();
            return Result.success(categoryVoList);
        } catch (Exception e) {
            return  Result.error();
        }
    }

}
