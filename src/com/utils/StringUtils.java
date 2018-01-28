package com.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtils{

	public static boolean isNotEmpty(String... strings){
		if (strings==null) {
			return false;
		}
		for(String string:strings){
			if (string==null||"".equals(string)) {
				return false;
			}	
		}
		return true;
	}
	public static boolean isNumeric(String str){ 
		   Pattern pattern = Pattern.compile("[0-9]*"); 
		   Matcher isNum = pattern.matcher(str);
		   if( !isNum.matches() ){
		       return false; 
		   } 
		   return true; 
		}
}
