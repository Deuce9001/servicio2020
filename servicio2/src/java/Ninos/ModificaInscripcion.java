package Ninos;

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

public class ModificaInscripcion extends HttpServlet {

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
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/modificar4.jsp");
        disp.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
                
        String url = getServletContext().getInitParameter("url");
        String user = getServletContext().getInitParameter("user");
        String pass = getServletContext().getInitParameter("pass");
        
        HttpSession session = request.getSession();
        
        String acta_nac = request.getParameter("acta_nac");
        String cartilla_vac = request.getParameter("cartilla");
        String curp = request.getParameter("curp");
        String aviso = request.getParameter("aviso");
        String reglamento = request.getParameter("reglamento");
        String ex_med = request.getParameter("medico");
        String boleta = request.getParameter("boleta");
        int id = (int) session.getAttribute("matricula");
        
        String sql = "UPDATE Inscripcion "
                + "SET acta_nac=?, cartilla_vac=?, curp=?, av_privacidad=?, reglamento=?, ex_med=?, boleta_calif=? "
                + "WHERE id_nino=?";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url,user,pass)) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, acta_nac);
                    ps.setString(2, cartilla_vac);
                    ps.setString(3, curp);
                    ps.setString(4, aviso);
                    ps.setString(5, reglamento);
                    ps.setString(6, ex_med);
                    ps.setString(7, boleta);
                    ps.setInt(8, id);
                    ps.executeUpdate();
                    
                    request.setAttribute("res", "Se han actualizado con éxito los requisitos de inscripción.");
                    doGet(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AltaInscripcion.class.getName()).log(Level.SEVERE, null, ex);
            
            request.setAttribute("error", "true");
            request.setAttribute("res", "Lo sentimos, hubo un problema al realizar la modificación, introduzca los datos nuevamente. Error: " + ex.getMessage());
            doGet(request, response);
        }
    }
}