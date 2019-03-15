package com.lxd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxd.model.Uu;
import com.lxd.utils.EhcacheUtil;

@Controller
@RequestMapping("/")
public class LoginController {
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response,Model mp){
		//echahe测试缓存,获取缓存
		EhcacheUtil.getInstance().put("cacheTest", "tt", "fuck");
		Object object = EhcacheUtil.getInstance().get("cacheTest","tt");
		System.out.println("------------------"+object.toString());
		//存session
		Uu uu=new Uu();
		uu.setAge("sadsaf");
		uu.setName("sadasda");
		request.getSession().setAttribute("user", uu);
		//modelmap使用
		mp.addAttribute("key", "value");
		return new ModelAndView("login");	
	}
	
}
