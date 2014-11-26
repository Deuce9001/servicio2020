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
public class BuscaNinoPorNombre extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String nombreCompleto = nombre + apellidos;
        boolean st = false;
        String sql = "SELECT * FROM Nino WHERE nombre LIKE ?;";
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", 
                    "servicio2020", "servicio2020")) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, nombreCompleto);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        st = true;
                    }
                }
                if (st) {
                    request.setAttribute("res", "Los alumnos de nombre " + session.getAttribute("nombre") + " son: ");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("BuscaNinoPorNombre.jsp");
                    rd.include(request, response);
                } else {
                    request.setAttribute("res", "Lo sentimos, hubo un error, introduzca un nombre v&aacute;lido por favor.");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("BuscaNinoPorNombre.jsp");
                    rd.include(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(BuscaNinoPorNombre.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}