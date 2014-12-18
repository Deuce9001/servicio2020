package Tutores;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
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

/**
 *
 * @author David
 */
public class AltaTutor extends HttpServlet {

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
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/darDeAltaT.jsp");
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
        
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String nombreCompleto = nombre + " " + apellidos;
        
        int dia = Integer.parseInt(request.getParameter("dia"));
        int mes = Integer.parseInt(request.getParameter("mes"));
        int anio = Integer.parseInt(request.getParameter("anio"));
        String fecha_nac = anio + "-" + mes + "-" + dia;
        
        String direccion = request.getParameter("direccion");
        int tel = Integer.parseInt(request.getParameter("tel1"));
        int cel = Integer.parseInt(request.getParameter("celular"));
        int otro_tel = Integer.parseInt(request.getParameter("tel2"));
        String parentesco = request.getParameter("parentesco");
        String edo_civil = request.getParameter("estado_civil");
        String lugar_nac = request.getParameter("lugar_nac");
        String escolaridad = request.getParameter("escolaridad");
        String correo_e = request.getParameter("correo_e");
        String estatus = "activo";
        
        //Image
        String path = "C:\\Users\\David\\OneDrive\\Imágenes\\";
        String file = request.getParameter("foto");
        String filepath = path + file;
        request.setAttribute("filepath", filepath);
        InputStream img = new FileInputStream(new File(filepath));
        
        String sql = "INSERT INTO Tutor "
                + "(nombre, direccion, tel, cel, otro_tel, parentesco, edo_civil, lugar_nac, fecha_nac, escolaridad, correo_e, estatus, foto) "
                + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?);";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url,user,pass)) {
                try (PreparedStatement ps = con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS)) {
                    ps.setString(1, nombreCompleto);
                    ps.setString(2, direccion);
                    ps.setInt(3, tel);
                    ps.setInt(4, cel);
                    ps.setInt(5, otro_tel);
                    ps.setString(6, parentesco);
                    ps.setString(7, edo_civil);
                    ps.setString(8, lugar_nac);
                    ps.setString(9, fecha_nac);
                    ps.setString(10, escolaridad);
                    ps.setString(11, correo_e);
                    ps.setString(12, estatus);
                    ps.setBlob(13, img);
                    ps.executeUpdate();
                    ResultSet rs = ps.getGeneratedKeys();
                    rs.next();
                    int matricula = rs.getInt(1);
                    request.setAttribute("nombre", nombre);
                    request.setAttribute("idTutor", matricula);
                }
                request.setAttribute("res", request.getAttribute("nombre") + " con matrícula " + request.getAttribute("idTutor") + " registrado exitosamente!");
                request.setAttribute("matricula", session.getAttribute("id"));
                doGet(request, response);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AltaTutor.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("error", "true");
            request.setAttribute("res", "Lo sentimos, ha ocurrido un error, introduza los datos nuevamente Error: " + ex.getMessage());
            doGet(request, response);
        }
    }
}
