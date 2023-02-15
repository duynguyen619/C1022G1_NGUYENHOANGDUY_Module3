package service.impl;

import model.Books;
import repository.IBookRepository;
import repository.impl.BookRepository;
import service.IBookService;

import java.util.List;
import java.util.Map;

public class BookService implements IBookService {
    IBookRepository iBookRepository=new BookRepository();

    @Override
    public List<Books> showList() {
        return iBookRepository.showList();
    }

    @Override
    public List<Books> showAll() {
        return iBookRepository.showAll();
    }

    @Override
    public List<Books> find() {
        return iBookRepository.find();
    }

    @Override
    public List<Books> delete() {
        return iBookRepository.delete();
    }

    @Override
    public Map<String, String> add(Books books) {
        return null;
    }
}
