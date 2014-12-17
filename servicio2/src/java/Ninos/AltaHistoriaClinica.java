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

public class AltaHistoriaClinica extends HttpServlet {

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
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/historialClinico2.jsp");
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
        
        int id = (int)session.getAttribute("matricula");
        String enfermedades = request.getParameter("enfermedades");
        float peso = Float.parseFloat(request.getParameter("Peso"));
        float estatura = Float.parseFloat(request.getParameter("estatura"));
        String medicamentos = request.getParameter("medicamentos");
        String tipo_sanguineo = request.getParameter("tipo_sang");
        
        String sql = "INSERT INTO HistoriaClinica (id_nino, enfermedades, peso, estatura, medicamentos, tipo_sanguineo) VALUES (?,?,?,?,?,?);";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url,user,pass)) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setInt(1, id);
                    ps.setString(2, enfermedades);
                    ps.setFloat(3, peso);
                    ps.setFloat(4, estatura);
                    ps.setString(5, medicamentos);
                    ps.setString(6, tipo_sanguineo);
                    ps.executeUpdate();
                    request.setAttribute("res", "El registro de la Historia Clinica ha sido exitoso!");
                    doGet(request, response);
                }
            }
        }   catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AltaHistoriaClinica.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("error", "true");
            request.setAttribute("res", "Lo sentimos, hubo errores al realizar el registro, ingrese los datos nuevamente. Error: " + ex.getMessage());
            doGet(request, response);
        }
    }   
}
