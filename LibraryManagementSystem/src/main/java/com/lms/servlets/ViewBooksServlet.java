package com.lms.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lms.model.Book;
import com.lms.service.BookService;
import com.lms.service.impl.BookServiceImpl;


@WebServlet("/ViewBooksServlet")
public class ViewBooksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BookService bookService ;
      
	public void init() {
		bookService = new BookServiceImpl();
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Book> books = bookService.getAllBooks();
		System.out.println(books.get(0).getBook_Author());
		request.setAttribute("booksList", books);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
