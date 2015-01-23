package Grupos;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BajaGrupo extends HttpServlet {

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
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/darDeBajaG.jsp");
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
        
        int matricula = Integer.parseInt(request.getParameter("matricula"));
        
        String sql = "DELETE FROM Grupo WHERE id=?;";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try(Connection con = DriverManager.getConnection(url,user,pass)){
                try(PreparedStatement ps = con.prepareStatement(sql)){
                    ps.setInt(1, matricula);
                    ps.executeUpdate();
                    request.setAttribute("res", "Se ha eliminado el grupo correctamente.");
                    doGet(request, response);
                }
            } catch (SQLException ex) {
                Logger.getLogger(BajaGrupo.class.getName()).log(Level.SEVERE, null, ex);
                request.setAttribute("error","true");
                request.setAttribute("res", "Hay un error con la matricula, ingresela nuevamente. Error: " + ex.getMessage());
                doGet(request, response);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BajaGrupo.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("error","true");
            request.setAttribute("res", "Ha habido un error con el sistema, intente de nuevo.");
            doGet(request, response);
        }
    }

}
