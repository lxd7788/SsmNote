package com.lxd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxd.utils.EhcacheUtil;

@Controller
@RequestMapping("/")
public class LoginController {
	@RequestMapping("/login")
	public ModelAndView login(){
		//测试缓存
		EhcacheUtil.getInstance().put("cacheTest", "tt", "fuck");
		Object object = EhcacheUtil.getInstance().get("cacheTest","tt");
		System.out.println("------------------"+object.toString());
		return new ModelAndView("login");	
	}
}
