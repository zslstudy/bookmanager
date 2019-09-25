package com.dao;

import com.entity.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookDao
{
    //根据id搜索书
    public abstract Book queryById(long id);

    //列出所有书
    public abstract List<Book> queryAll(@Param("offset") int offset,@Param("limit") int limit);

    //添加书
    public abstract int addBook(Book book);

    //修改书
    public abstract int updateBook(Book book);

    //根据ID删除书
    public abstract int deleteBookById(long id);
}
