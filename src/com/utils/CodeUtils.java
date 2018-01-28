package com.utils;

import java.lang.reflect.Method;

public class CodeUtils {
	
    public static String encodeBase64(byte[]input) throws Exception{  
        Class clazz=Class.forName("com.sun.org.apache.xerces.internal.impl.dv.util.Base64");  
        Method mainMethod= clazz.getMethod("encode", byte[].class);  
        mainMethod.setAccessible(true);  
         Object retObj=mainMethod.invoke(null, new Object[]{input});  
         return (String)retObj;  
    }  
  /*  public static void main(String[] args) {
		String signature=null;
		try {
			byte[] signatureByte=HMACSHA1.HmacSHA1Encrypt("1509700908330"+":"+1,"H59y0x7r66T8WrcwAgKbNzwWw2npW9");
			signature = CodeUtils.encodeBase64(signatureByte);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(signature);
	}*/
}
