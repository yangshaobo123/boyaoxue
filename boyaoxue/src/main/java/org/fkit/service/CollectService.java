package org.fkit.service;

import java.util.List;

import org.fkit.domain.Collect;

public interface CollectService {
	/**
	 * 输入收藏
	 **/
	void saveCollect(Collect collect);
	/**
	 * 查找收藏细节
	 * @return Detail小说对象集合
	 */
	List<Collect> getAllCollectByLoginname(String loginname);
	/**
	 * 通过商品ID和loginname查询收藏书籍
	 **/
	Collect findCollect(String loginname,Integer book_id); 
	
	/**
	 * 删除收藏
	 **/
	Collect removeCollect(String loginname,Integer book_id);
	
}

