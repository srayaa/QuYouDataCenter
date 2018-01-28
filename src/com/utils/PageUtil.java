package com.utils;

import java.util.ArrayList;
import java.util.List;

import com.pojo.Person;

import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.util.JSONUtils;

public class PageUtil {
	public static final int PAGE_COUNT=10;
     public static List<Person> getCurrentPageList(int curPage,List<Person> persons){
    	 int startIndex=(curPage-1)*PAGE_COUNT;
    	 int endIndex=(curPage)*PAGE_COUNT-1;
    	 List<Person> list=new ArrayList<Person>();
    	 for (int i = startIndex; i <= endIndex; i++) {
    		 if (persons!=null) {
    			 list.add(persons.get(i));
			}
		}
    	return list;
    	 
     }
     public static void main(String[] args) {
		int[] a={1,2,3,4};
		int[][] b={{1,2,3},{4,5,6},{7,8,9}};
		System.out.println(JSONArray.fromObject(b).toString());
	}
     
}
