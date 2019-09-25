package com.service;

import com.entity.Book;

import java.util.List;

/**
 * 业务接口：站在"使用者"角度设计接口 三个方面：方法定义粒度，参数，返回类型（return 类型/异常）
 */
public interface BookService
{
    //通过id查询书
    Book getById(long bookId);

    //获取所有书
    List<Book> getList(int start,int pageNum);

    //添加书
    int addBook(Book book);

    //修改书
    int updateBook(Book book);

    //删除书
    int deleteBookById(long id);
}
