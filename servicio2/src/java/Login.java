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

public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {   
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String sql = "SELECT * FROM Usuario WHERE usuario=? AND password=?;";
        boolean st = false;
        String url = getServletContext().getInitParameter("url");
        String user = getServletContext().getInitParameter("user");
        String pass = getServletContext().getInitParameter("pass");
        
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url, user, pass)) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, username);
                    ps.setString(2, password);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        st = true;
                        session.setAttribute("usuario", rs.getString("usuario"));
                        session.setAttribute("permiso", (rs.getString("permiso").toUpperCase()));
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } 
        if (st) {
            request.setAttribute("res", "Bienvenido " + session.getAttribute("usuario"));
            if (session.getAttribute("permiso").equals("ADMINISTRADOR")) {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("ninos");
                rd.include(request, response);
            } else {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("ninos");
                rd.include(request, response);
            }
        } else {
            request.setAttribute("res", "Usuario o contrase&ntilde;a incorrecto(s)");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
            rd.include(request, response);
        } 
    }
}