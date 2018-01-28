package com.utils;

import java.io.File;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Component;

@Component
public class PathUtil {

	public static String relativePath;
	
	@PostConstruct
	public void getRalativePath(){
		String dir = System.getProperty("user.dir");// 当前启动路径
		String parentPath=new File(dir).getParent();
		relativePath=parentPath+"\\webapps";
	}
}
