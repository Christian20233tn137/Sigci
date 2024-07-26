package utez.edu.mx.sicci.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utez.edu.mx.sicci.dao.UserDao;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DeshabilitarAspiranteServlet", value = "/borrarAspirante")

public class DeshabilitarAspiranteServlet extends HttpServlet {

    private UserDao userDao;

    @Override
    public void init() throws ServletException {
        userDao = new UserDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            int id_usuario = Integer.parseInt(req.getParameter("id_usuario"));
            userDao.delete(id_usuario);
            resp.sendRedirect("getListaAdminAspirantes");
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
