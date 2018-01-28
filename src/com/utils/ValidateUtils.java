package com.utils;

import java.util.Date;

public class ValidateUtils {
	//索引是否有效
	public static boolean isValidatedIndex(int ...arg){
		boolean valivate=true;
		for (int i = 0; i < arg.length; i++) {
			if (arg[i]==-1) {
				valivate=false;
			}
		}
		return valivate;
	}
	public static boolean isValidatedDate(Date ...arg){
		boolean valivate=true;
		for (int i = 0; i < arg.length; i++) {
			if (arg[i]==null) {
				valivate=false;
			}
		}
		return valivate;
	}

}
