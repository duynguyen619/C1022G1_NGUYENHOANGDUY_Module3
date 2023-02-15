package repository.impl;

import model.Books;
import repository.BaseRepository;
import repository.IBookRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookRepository implements IBookRepository {
    private static final String SELECT_BY_ID = "select * from book where id = ?";
    private static final String INSERT_BOOK_SQL ="insert into book(title, page_size, author, category) values(?,?,?,?)";
    private static final String FINDALL ="select * from books " ;

    @Override
    public List<Books> showList() {
        List<Books> bookList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FINDALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String title = resultSet.getString("title");
                int pageSize = resultSet.getInt("pageSize");
                String author = resultSet.getString("author");
                String category = resultSet.getString("category");
                Books book1 = new Books(id, title, pageSize, author, category);
                bookList.add(book1);
            }
            resultSet.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return bookList;
    }

    @Override
    public List<Books> showAll() {
        List<Books> bookList = new ArrayList<>();

        Connection connection = BaseRepository.getConnection();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement("select * from books");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int bookId = Integer.parseInt(resultSet.getString("id"));
                String bookName = resultSet.getString("title");
                int pageSize = Integer.parseInt(resultSet.getString("page_size"));
                String author = resultSet.getString("author");
                String category = resultSet.getString("category");
                bookList.add(new Books(bookId, bookName, pageSize, author, category));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return bookList;
    }

    @Override
    public List<Books> find() {
        return null;
    }

    @Override
    public List<Books> delete() {
        return null;
    }

    @Override
    public boolean add(Books books) {

        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement ps = connection.prepareStatement(INSERT_BOOK_SQL)) {
            ps.setString(1, String.valueOf(books.getId()));
            ps.setString(2, books.getTitle());
            ps.setString(3, String.valueOf(books.getPageSize()));
            ps.setString(4, books.getAuthor());
            ps.setString(6, books.getCategory());
            int update = ps.executeUpdate();
            if (update != 0) {
                return true;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }
}
