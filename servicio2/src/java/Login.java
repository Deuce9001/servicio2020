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
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        boolean st = false;
        
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", "servicio2020", "servicio2020")) {
                try (PreparedStatement ps = con.prepareStatement("SELECT * FROM Usuario WHERE usuario=? AND password=?")) {
                    ps.setString(1,usuario);
                    ps.setString(2,password);
                    ResultSet rs = ps.executeQuery();
                    System.out.println("Coneccion con la base de datos realizada");
                    while (rs.next()) {
                        st = true;
                        session.setAttribute("usuario", rs.getString("usuario"));
                        session.setAttribute("permiso", (rs.getString("permiso").toUpperCase()));
                    }
                } finally {
                    con.close();
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } 
        if (st) {
            request.setAttribute("res", "Bienvenido " + session.getAttribute("usuario"));
            if (session.getAttribute("permiso").equals("ADMINISTRADOR")) {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/ninos.jsp");
                rd.include(request, response);
            } else {
                
            }
        } else {
            request.setAttribute("res", "Usuario o contrase&ntilde;a incorrecto(s)");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
            rd.include(request, response);
        }                
    }
}