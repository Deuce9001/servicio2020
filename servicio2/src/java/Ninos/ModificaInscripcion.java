package Ninos;

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

/**
 *
 * @author David
 */
public class ModificaInscripcion extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String nombreNino = request.getParameter("id_nino");
        String acta_nac = request.getParameter("acta_nac");
        String cartilla_vac = request.getParameter("cartilla_vac");
        String curp = request.getParameter("curp");
        String a_p = request.getParameter("av_privacidad");
        String reglamento = request.getParameter("reglamento");
        String ex_med = request.getParameter("ex_med");
        String boleta_calif = request.getParameter("boleta_calif");
        boolean st = false;
        String sql = "UPDATE Inscripcion SET acta_nac=?, cartilla_vac=?, curp=?, a_p=?, reglamento=?, ex_med=?, boleta_calif=? WHERE id_nino = (SELECT id FROM Nino WHERE nombre=?);";
        
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", "servicio2020", "servicio2020")) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, acta_nac);
                    ps.setString(2, cartilla_vac);
                    ps.setString(3, curp);
                    ps.setString(4, a_p);
                    ps.setString(5, reglamento);
                    ps.setString(6, ex_med);
                    ps.setString(7, boleta_calif);
                    ps.setString(8, nombreNino);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        st = true;
                        session.setAttribute("nombre", rs.getString("nombreNino"));
                    }
                }
            } if (st) {
                request.setAttribute("res", "La inscripcion del alumno " + session.getAttribute("nombre") + " ha sido modificada exitosamente!.");
                RequestDispatcher rd = getServletContext().getRequestDispatcher("ModificaInscripcion.jsp");
                rd.include(request, response);
            } else {
                request.setAttribute("res", "Ha habido un problema con el cambio que desea realizar en la inscripcio, llene los campos he intente de nuevo.");
                RequestDispatcher rd = getServletContext().getRequestDispatcher("ModificaInscripcion.jsp");
                rd.include(request, response);
            } 
        } 
        catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AltaNino.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
