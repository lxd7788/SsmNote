package com.lxd.controller;

import java.io.File;

public class Tt {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		  File file=new File("");
		  String absolutePath = file.getAbsolutePath();
		  System.out.println(absolutePath+File.separator+"src/main/webapp/img");
	}

}
