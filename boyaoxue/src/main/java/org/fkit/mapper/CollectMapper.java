package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Collect;

public interface CollectMapper {
	//添加到收藏
	@Insert("insert into tb_collect(name,price,image,loginname,book_id)values(#{name},#{price},#{image},#{loginname},#{book_id})")	
	void saveCollect(Collect collect);
	/**
	 * 查询所有收藏
	 * @return收藏对象集合
	 */
	@Select("select * from tb_collect where loginname=#{loginname}")
	List<Collect> findAllCollectByLoginname(@Param("loginname")String loginname);
	/**
	 * 通过商品book_id和loginname查询商品
	 */
	@Select("select * from tb_collect where loginname=#{loginname} AND book_id=#{book_id}")
	Collect findCollect(@Param("loginname")String loginname,@Param("book_id")Integer book_id);
	
	//删除收藏
	@Delete("delete from tb_collect where loginname=#{loginname} AND book_id=#{book_id}")
	void removeCollect(@Param("loginname")String loginname,
			@Param("book_id")Integer book_id);
	
	}


