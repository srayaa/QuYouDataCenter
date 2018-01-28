package com.pojo;

import java.util.List;

public class PageBean<T> {
	 /** 
     * 当前页 
     */  
    private Integer currentPage;  
    /** 
     * 每页显示条数 
     */  
    private Integer pageSize;  
    /** 
     * 总记录数 
     */  
    private Integer totalCount;  
    /** 
    * 总页数 
    */  
    private Integer totalPage;  
    /** 
     * 每页数据内容 
     */  
    private List<T> content;
	public PageBean(Integer currentPage,Integer totalPage) {
		super();
		this.currentPage = currentPage;
		this.totalPage = totalPage;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public List<T> getContent() {
		return content;
	}
	public void setContent(List<T> content) {
		this.content = content;
	} 
    
}
