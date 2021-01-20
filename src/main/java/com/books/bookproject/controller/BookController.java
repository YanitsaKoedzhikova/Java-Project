package com.books.bookproject.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.books.bookproject.model.Book;
import com.books.bookproject.service.BookService;

@Controller
public class BookController {

	@Autowired
	private BookService service;
	
	@RequestMapping("/index")
	public String viewIndexPage(Model model, @Param("keyword") String keyword) {
	List<Book> bookList = service.listAll(keyword);
	model.addAttribute("getAllBook", bookList);
	model.addAttribute("keyword", keyword);
	return "index";
	}	
	
	@RequestMapping("/create")
	public String viewNewBookForm(Model model) {
		Book book = new Book();
		model.addAttribute("book", book);
		return "insert";
	}
	
	@RequestMapping(value = "/save_book", method = RequestMethod.POST)
	public String addNewBook(@ModelAttribute("book") Book book) {
		service.create(book);
		return "redirect:/index";
	}
	
	@RequestMapping("edit/{id}")
	public ModelAndView viewEditBookForm(@PathVariable(name = "id") long id) {
		
		ModelAndView mav = new ModelAndView("update");
		Book book = service.updateid(id);
		mav.addObject("book", book);
		return mav;
		
	}
	
	@RequestMapping("delete/{id}")
	public String deleteBook(@PathVariable(name = "id") long id) {
		service.delete(id);
		return "redirect:/index";
	}
	
}
