package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Book;

/**
 * BookMapper接口
 * */
public interface BookMapper {

	/**
	 * 查询所有图书ww
	 * @return 图书对象集合
	 * */
	@Select(" select * from tb_book ")
	List<Book> findAll();
	//
	@Select("select * from tb_book where id=#{id}")
	@Results({ @Result(id = true, column = "id", property = "id"), @Result(column = "name", property = "name"),
			@Result(column = "author", property = "author"), @Result(column = "publicationdate", property = "publicationdate"),
			@Result(column = "publication", property = "publication"),@Result(column = "image", property = "image"),
			@Result(column = "price", property = "price"), @Result(column = "remark", property = "remark"),
			@Result(column = "count", property = "count")})
	List<Book> selectByBookId(int id);
	

	@Select(" select * from tb_book where id=#{book_id}")		
	Book findone(@Param("book_id") int book_id);
}
