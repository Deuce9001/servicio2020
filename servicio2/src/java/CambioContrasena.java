
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

public class CambioContrasena extends HttpServlet {

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
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/perfilContrasena.jsp");
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
        
        String username = (String)session.getAttribute("username");
        String permiso = (String)session.getAttribute("permiso");
        String password = request.getParameter("password");
        String con1 = request.getParameter("con1");
        String con2 = request.getParameter("con2");
        
        String sql = "UPDATE Usuario SET password=? WHERE usuario=? AND password=? AND permiso=?;";
        
        if(con1 == null ? con2 == null : con1.equals(con2) && con1.length()>8){
            try{ Class.forName("com.mysql.jdbc.Driver");
                try(Connection con = DriverManager.getConnection(url,user,pass)) {
                    try(PreparedStatement ps = con.prepareStatement(sql)){
                        ps.setString(1, con1);
                        ps.setString(2, username);
                        ps.setString(3, password);
                        ps.setString(4, permiso);
                        ps.executeUpdate();
                        request.setAttribute("res", "Contrase&ntilde;a actualizada.");
                        doGet(request, response);
                    }
                }
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(CambioContrasena.class.getName()).log(Level.SEVERE, null, ex);
                request.setAttribute("error", "true");
                request.setAttribute("res", "Ha habido un error, introduzca los datos nuevamente. Error: " + ex.getMessage());
            }
        } else {
            request.setAttribute("error","true");
            request.setAttribute("res", "Las contrse&ntilde;as no coinciden.");
            doGet(request, response);
        } 
    }
}
