package Tutores;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BajaTutor extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        if (session.getAttribute("username") == null || session.getAttribute("permiso").equals("Administrador") == false) {
            response.sendRedirect("./index.jsp"); 
            return;
        }
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/darDeBajaT.jsp");
        disp.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession();
        
        String url = getServletContext().getInitParameter("url");
        String user = getServletContext().getInitParameter("user");
        String pass = getServletContext().getInitParameter("pass");
        
        int id = Integer.parseInt(request.getParameter("matricula"));
        String estado = "inactivo";
        
        String sql = "UPDATE Tutor SET estatus=? WHERE id=?;";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url,user,pass)) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, estado);
                    ps.setInt(2, id);
                    ps.executeUpdate();
                }
                    request.setAttribute("res", "El tutor con la matr&iacute;cula " + id + " ha sido dado de baja exitosamente.");
                    doGet(request, response);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(BajaTutor.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("res", "Lo sentimos, ha habido un error, ingrese los datos nuevamente. Error: " + ex.getMessage());
            request.setAttribute("error", "true");
            doGet(request, response);
        }
    }

}