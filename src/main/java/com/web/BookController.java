package com.web;

import com.entity.Book;
import com.service.BookService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController
{
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private BookService bookService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    private String list(Model model)
    {
        List<Book> list = bookService.getList(0,1000);
        model.addAttribute("list",list);
        return "list";
    }

    @RequestMapping(value = "/detail/{bookId}", method = RequestMethod.GET)
    private String detail(@PathVariable("bookId") Long bookId, Model model)
    {
        Book book = bookService.getById(bookId);
        model.addAttribute("book", book);
        return "detail";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String add(Book book)
    {
        logger.info("add req: "+ book.toString());
        Book hasBook = bookService.getById(book.getBookId());
        int i = -2;
        if(hasBook == null)
        {
            i = bookService.addBook(book);
        }
        String res = i>0?"success":"error";
        logger.info("add res: "+res);
        return res;
    }

    @RequestMapping(value = "/del/{bookId}",method = RequestMethod.GET)
    @ResponseBody
    public String deleteBookById(@PathVariable("bookId") Long id)
    {
        int i = bookService.deleteBookById(id);
        return i>0?"success":"error";
    }

}
