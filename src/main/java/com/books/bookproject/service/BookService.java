package com.books.bookproject.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.books.bookproject.model.Book;
import com.books.bookproject.repository.BookRepository;

@Service
public class BookService {
 
	@Autowired
	private BookRepository repository;
	
	public List<Book> listAll(String keyword) {
		if (keyword != null) {
		return repository.search(keyword);
		}
        return repository.findAll();
	}
	
	public void create(Book book) {
		repository.save(book);
	}
	
	public Book updateid(Long id) {
		return repository.findById(id).get();
	}
	
	public void delete(Long id) {
		repository.deleteById(id);
	}
}
