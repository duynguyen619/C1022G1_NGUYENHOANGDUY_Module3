package controller;

import model.Student;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@javax.servlet.annotation.WebServlet(name = "StudentListServlet")
public class StudentListServlet extends javax.servlet.http.HttpServlet {
    private static List<Student> list = new ArrayList<>();

    static {
        list.add(new Student(1, "Nam", true, 66));
        list.add(new Student(2, "Hùng", true, 60));
        list.add(new Student(3, "Long", true, 50));
        list.add(new Student(4, "Bá", true, 70));
        list.add(new Student(5, "Thắng", true, 90));
        list.add(new Student(6, "Hiền", false, 100));
    }

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setAttribute("list", list);
        request.getRequestDispatcher("/list.jsp").forward(request, response);
    }
}
