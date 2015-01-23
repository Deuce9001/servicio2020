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

public class AltaUsuarios extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
                
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/AltaUsuarios.jsp");
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
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        try{ Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url,user,pass))
            {
                try (PreparedStatement p = con.prepareStatement("insert into usuario (usuario, password, permiso) values (?, ?, ?);")) {
                    p.setString(1,username);
                    p.setString(2,password);
                    p.setString(3,"Administrador");
                    p.executeUpdate();

                    request.setAttribute("message", "Alta de usuario exitosa ");
                    session.setAttribute("username", request.getParameter("username"));
                    RequestDispatcher disp = getServletContext().getRequestDispatcher("/index.jsp");
                    disp.include(request, response);
                }
            }
        }
        catch (ClassNotFoundException | SQLException ex)
        {
            Logger.getLogger(AltaUsuarios.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("error", "true");
            request.setAttribute("res", "Error: " + ex.getMessage());
            doGet(request, response);
        }
    }
}