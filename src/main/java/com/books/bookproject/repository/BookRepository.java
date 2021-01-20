package com.books.bookproject.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.books.bookproject.model.Book;

public interface BookRepository extends JpaRepository<Book, Long> {
	
	@Query("SELECT p FROM Book p WHERE CONCAT(p.name, ' ', p.author, ' ', p.genre) LIKE %?1%")
	public List<Book> search(String keyword);
	
}
