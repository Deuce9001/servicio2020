package Personal;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AltaPersonal extends HttpServlet {

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
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/darDeAltaP.jsp");
        disp.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
                
        String url = getServletContext().getInitParameter("url");
        String user = getServletContext().getInitParameter("user");
        String pass = getServletContext().getInitParameter("pass");
        
        HttpSession session = request.getSession();
        
        String nom = request.getParameter("nom");
        String apellido = request.getParameter("apellido");
        String nombre = nom + " " + apellido;
        String direccion = request.getParameter("direccion");
        int tel = Integer.parseInt(request.getParameter("tel"));
        int cel = Integer.parseInt(request.getParameter("cel"));
        String posicion = request.getParameter("posicion");
        String curriculum = request.getParameter("curriculum");
        String actividades = request.getParameter("actividades");
        String estatus = "activo";
        String tipo = request.getParameter("tipo");
        
        String sql = "INSERT INTO Personal (nombre, direccion, tel, cel, posicion, curriculum, actividades, estatus, tipo) "
                + "VALUES (?,?,?,?,?,?,?,?,?);";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url, user, pass)) {
                try (PreparedStatement ps = con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS)) {
                    ps.setString(1, nombre);
                    ps.setString(2, direccion);
                    ps.setInt(3, tel);
                    ps.setInt(4, cel);
                    ps.setString(5, posicion);
                    ps.setString(6, curriculum);
                    ps.setString(7, actividades);
                    ps.setString(8, estatus);
                    ps.setString(9, tipo);
                    ps.executeUpdate();
                    ResultSet rs = ps.getGeneratedKeys();
                    rs.next();
                    int matricula = rs.getInt(1);
                    request.setAttribute("matricula", matricula);
                }
                request.setAttribute("res", "El personal " + nombre + " con matricula " + request.getAttribute("matricula") + " ha sido registrado exitosamente!");
                doGet(request,response);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AltaPersonal.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("error", "true");
            request.setAttribute("res", "Ingrese nuevamente los datos, ha habido un problema para realizar el registro. Error: " + ex.getMessage());
            doGet(request, response);
        }
        
    }
    
}
