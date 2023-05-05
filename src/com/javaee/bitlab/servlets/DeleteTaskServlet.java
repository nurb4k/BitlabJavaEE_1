package com.javaee.bitlab.servlets;

import com.javaee.bitlab.db.DBManager;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete")
public class DeleteTaskServlet extends HomeServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html; charset=UTF-8");
        Long id = Long.parseLong(request.getParameter("id"));
        DBManager.deleteTask(id);
        response.sendRedirect("/?delete_success");
    }

}
