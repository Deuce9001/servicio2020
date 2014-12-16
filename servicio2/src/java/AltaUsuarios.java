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
        
        request .setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession();
        
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/AltaUsuarios.jsp");
        disp.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request .setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession();
        
        String url = getServletContext().getInitParameter("url");
        String user = getServletContext().getInitParameter("user");
        String pass = getServletContext().getInitParameter("pass");
        
        try{ Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url,user,pass))
            {
                try (PreparedStatement p = con.prepareStatement("insert into Usuario (usuario, password, permiso) values (?, ?, ?);")) {
                    p.setString(1, request.getParameter("username"));
                    p.setString(5, request.getParameter("password"));
                    p.setString(6, request.getParameter("permiso"));
                    p.executeUpdate();

                    request.setAttribute("message", "Alta de usuario exitosa ");
                    session.setAttribute("username", request.getParameter("username"));
                    RequestDispatcher disp = getServletContext().getRequestDispatcher("/AltaUsuarios.jsp");
                    disp.include(request, response);
                }
            }
        }
        catch (ClassNotFoundException | SQLException ex)
        {
            Logger.getLogger(AltaUsuarios.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("error", "true");
            request.setAttribute("res", "Error");
            doGet(request, response);
        }
    }
}
