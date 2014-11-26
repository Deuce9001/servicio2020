package Ninos;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author David
 */
public class AltaHistoriaClinica extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        int id = Integer.parseInt(request.getParameter("id"));
        String enfermedades = request.getParameter("enfermedades");
        float peso = Float.parseFloat(request.getParameter("peso"));
        float estatura = Float.parseFloat(request.getParameter("estatura"));
        String medicamentos = request.getParameter("medicamentos");
        String tipo_sanguineo = request.getParameter("tipo_sanguineo");
        int id_nino = Integer.parseInt(request.getParameter("id_nino"));
        String sql = "INSERT INTO HistoriaClinica (id_nino, enfermedades, peso, estatura, medicamentos, tipo_sanguineo) VALUES (?,?,?,?,?,?);";
        boolean st = false;
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", "servicio2020", "servicio2020")) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setInt(1, id);
                    ps.setInt(2, id_nino);
                    ps.setString(3, enfermedades);
                    ps.setFloat(4, peso);
                    ps.setFloat(5, estatura);
                    ps.setString(6, medicamentos);
                    ps.setString(7, tipo_sanguineo);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        st = true;
                    }
                } finally {
                    con.close();
                }
                if (st) {
                    request.setAttribute("res", "El registro de la Historia Clinica ha sido exitoso!");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/ninos.jsp");
                    rd.include(request, response);
                } else {
                    request.setAttribute("res", "Lo sentimos, hubo errores al realizar el registro, ingrese los datos nuevamente, por favor");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/altaHistoriaClinica.jsp");
                    rd.include(request, response);
                }
            }
        }   catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AltaHistoriaClinica.class.getName()).log(Level.SEVERE, null, ex);
        }
    }   
}
