package Personal;

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
public class ModificaPersonal extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String opcion = request.getParameter("opcion");
        String nombre = request.getParameter("");
        String id = request.getParameter("id");
        boolean st = false;
        String sql = "SELECT nombre,id,direccion,telefono FROM Personal WHERE nombre LIKE ?;";
        try {
            Class.forName("con.mysql.jdbc.Diver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", "servicio2020", "servicio2020")) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, nombre);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        st = true;
                    }
                }
                if (st) {
                    request.setAttribute("res", "Ingrese el id del personal que desee modificar: ");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("modificarP.jsp");
                    rd.include(request, response);
                } else {
                    request.setAttribute("res", "No se ha encontrado el nombre del personal que desea modificar, ingrese nuevamente el nombre");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("modificarP.jsp");
                    rd.include(request, response);
                } 
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ModificaPersonal.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
