package Ninos;

import Beans.Nino;
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

public class ModificaNino extends HttpServlet {

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
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/modificar.jsp");
        disp.include(request, response);
        
        if(request.getParameter("matricula")!=null){
            
            int id = Integer.parseInt(request.getParameter("matricula"));

            String url = getServletContext().getInitParameter("url");
            String user = getServletContext().getInitParameter("user");
            String pass = getServletContext().getInitParameter("pass");

            String sql = "SELECT * FROM Nino WHERE id=?";

            try { Class.forName("com.mysql.jdbc.Driver");
                try(Connection con = DriverManager.getConnection(url,user,pass)){
                    try(PreparedStatement ps = con.prepareStatement(sql)) {
                        ps.setInt(1, id);
                        ResultSet rs = ps.executeQuery();
                        while(rs.next()){
                            Nino nino = new Nino();
                            nino.setNombre(rs.getString("nombre"));
                            nino.setDia(rs.getString("fecha_nac"));
                            nino.setMes(rs.getString("fecha_nac"));
                            nino.setAnio(rs.getString("fecha_nac"));
                            nino.setTelefono(rs.getInt("tel"));
                            nino.setDireccion(rs.getString("direccion"));
                            nino.setGradoEscolar(rs.getString("grado_escolar"));
                            nino.setPrograma(rs.getString("programa"));
                            nino.setAlergias(rs.getString("alergias"));
                            request.setAttribute("nino", nino);
                        }
                    }
                } 
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(ModificaNino.class.getName()).log(Level.SEVERE, null, ex);
                request.setAttribute("error", "true");
                request.setAttribute("res", "Hay un error con la matricula, escribala de nuevo.");
                doGet(request, response);
            }
        }
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
        
        int id = Integer.parseInt(request.getParameter("matricula"));
        String nombre = request.getParameter("nombre");
        String dia = request.getParameter("dia");
        String mes = request.getParameter("mes");
        String anio = request.getParameter("anio");
        String fecha_nac = anio + "-" + mes + "-" + dia;
        String direccion = request.getParameter("direccion");
        int tel = Integer.parseInt(request.getParameter("telefono"));
        String grado_escolar = request.getParameter("escolaridad");
        String programa = request.getParameter("programa");
        String estado = "activo";
        
        String alergias = request.getParameter("alergias");
        
        String sql = "UPDATE Nino SET "
                + "nombre=?, fecha_nac=?, direccion=?, tel=?, grado_escolar=?, programa=?, alergias=?, estado=?"
                + "WHERE id=?;";
                        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url,user,pass)) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, nombre);
                    ps.setString(2, fecha_nac);
                    ps.setString(3, direccion);
                    ps.setInt(4, tel);
                    ps.setString(5, grado_escolar);
                    ps.setString(6, programa);
                    ps.setString(7, alergias);
                    ps.setString(8, estado);
                    ps.setInt(9, id);
                    ps.executeUpdate();
                    session.setAttribute("matricula", id);
                }
                request.setAttribute("res", "El alumn@ " + nombre + " con matr&iacute;cula " + session.getAttribute("matricula") + " ha sido modificado exitosamente!");
                doGet(request,response);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ModificaNino.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("error", "true");
            request.setAttribute("res", "Ingrese nuevamente los datos, ha habido un problema para la modificación. Error: " + ex.getMessage());
            doGet(request, response);
        }
    }
}
