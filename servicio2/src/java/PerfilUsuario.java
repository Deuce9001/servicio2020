
import java.io.IOException;
import java.io.PrintWriter;
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

public class PerfilUsuario extends HttpServlet {

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
        
        String url = getServletContext().getInitParameter("url");
        String user = getServletContext().getInitParameter("user");
        String pass = getServletContext().getInitParameter("pass");
        
        String username = (String)session.getAttribute("username");
        String password = request.getParameter("password");
        String permiso = (String)session.getAttribute("permiso");
        
        String sql = "SELECT id FROM Usuario WHERE usuario=? AND password=? AND permiso=?";
        
        try { Class.forName("com.mysql.jdbc.Driver");
             try(Connection con = DriverManager.getConnection(url,user,pass)){
                 try(PreparedStatement ps = con.prepareStatement(sql)){
                     ps.setString(1, username);
                     ps.setString(2, password);
                     ps.setString(3, permiso);
                     ResultSet rs = ps.executeQuery();
                     while(rs.next()) {
                         request.setAttribute("idPerfil", rs.getString("id"));
                     }
                 }
             }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(PerfilUsuario.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("error","true");
            request.setAttribute("res", "La contraseña es incorrecta. Error: " + ex.getMessage());
            doGet(request, response);
        }
        
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/perfil.jsp");
        disp.include(request, response);
    }   

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
