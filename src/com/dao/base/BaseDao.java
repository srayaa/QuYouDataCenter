package com.dao.base;

import java.util.List;

import com.pojo.CardRecord;
import com.pojo.MainProxy;

public interface BaseDao<T> {
	public int editPassword(T person);
	 public List<T> getPersonLikeUsername(String username);
}
