package com.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.mvc.models.Book;
import com.mvc.repositories.BookRepository;

@Service
public class BookService {

    // adding the book repository as a dependency
    private final BookRepository bookRepository;
    
    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }
    // returns all the books
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }
    // creates a book
    public Book createBook(Book b) {
        return bookRepository.save(b);
    }
    // retrieves a book
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
    
    public Book updateBook(Long id, String title, String description, String lang, int numOfPages) {
    	
    	Book b = new Book (id, title, description, lang, numOfPages);
        return bookRepository.save(b);
    }
    
	public void deleteBook(Long id) {
		Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
            bookRepository.deleteById(id);
        }
	}
	
}
