package com.lxd.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.lxd.model.Uu;
import com.lxd.utils.EhcacheUtil;

@Controller
@RequestMapping("/")
public class LoginController {
	@RequestMapping("/iframe")
	public ModelAndView iframe(HttpServletRequest request, HttpServletResponse response,Model mp){
		//echahe测试缓存,获取缓存
		EhcacheUtil.getInstance().put("cacheTest", "tt", "fuck");
		Object object = EhcacheUtil.getInstance().get("cacheTest","tt");
		System.out.println("------------------"+object.toString());
		//存session
		Uu uu=new Uu();
		uu.setAge("001");
		uu.setName("sasa");
		uu.setImg("img/h1.jpg");
		request.getSession().setAttribute("user", uu);
		//modelmap使用
		Uu u=new Uu();
		u.setAge("002");
		u.setName("wawa");
		u.setImg("img/h2.jpg");
		List<Uu> list=new ArrayList<Uu>();
		list.add(u);
		list.add(uu);
		mp.addAttribute("key", list);
		return new ModelAndView("login");	
	}
	
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response,Model mp){
		//echahe测试缓存,获取缓存
		EhcacheUtil.getInstance().put("cacheTest", "tt", "fuck");
		Object object = EhcacheUtil.getInstance().get("cacheTest","tt");
		System.out.println("------------------"+object.toString());
		//存session
		Uu uu=new Uu();
		uu.setAge("001");
		uu.setName("sasa");
		uu.setImg("img/h1.jpg");
		request.getSession().setAttribute("user", uu);
		//modelmap使用
		Uu u=new Uu();
		u.setAge("002");
		u.setName("wawa");
		u.setImg("img/h2.jpg");
		List<Uu> list=new ArrayList<Uu>();
		list.add(u);
		list.add(uu);
		mp.addAttribute("key", list);
		return new ModelAndView("login");	
	}
	
	@RequestMapping("/data")
	@ResponseBody
	public String add(){
		
		JSONArray arr=new JSONArray();
		JSONObject obj=new JSONObject();
		JSONObject o=new JSONObject();
		Uu u=new Uu();
		u.setAge("002");
		u.setName("wawa");
		u.setImg("img/h2.jpg");
		
	
		arr.add(u);
		obj.put("data", arr);
		obj.put("code", 0);
		obj.put("msg", "");
		System.out.println("shoudao................");
		return obj.toString();
		
	}
	@RequestMapping("/put")
	@ResponseBody
	public String put(HttpServletRequest request,@RequestParam("file") MultipartFile f) throws IOException{
		MultipartHttpServletRequest mu=(MultipartHttpServletRequest)request;
		String realPath = request.getSession().getServletContext().getRealPath("/");
		Iterator<String> fileNames = mu.getFileNames();
		while(fileNames.hasNext()){
			MultipartFile file = mu.getFile(fileNames.next());
			String name = file.getName();
			InputStream inputStream = file.getInputStream();
			file.transferTo(new File(realPath+"/img/tttt.jpg"));
			//获取项目根目录
		
			System.out.println(name+realPath);
		}
		
		return "scu";
		
	}
}
