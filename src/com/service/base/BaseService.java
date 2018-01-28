package com.service.base;

import java.util.List;

public interface BaseService<T> {
	public int editPassword(T person);
	public List<T> getPersonLikeUsername(String username);
}
