package org.fkit.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Book;
import org.fkit.domain.Comment;

public interface CommentMapper {



@Insert("insert into tb_comment(service,logistics,quality,image1,comments) values (#{service},#{logistics},#{quality},#{image1},#{comments})")
void saveComment_(@Param("service")String service,@Param("logistics")String logistics,@Param("quality")String quality,@Param("image1")String image1,
		@Param("comments")String comments);
}
