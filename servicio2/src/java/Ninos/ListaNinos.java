package Ninos;

import Beans.Nino;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
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
public class ListaNinos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        if (session.getAttribute("usuario") == null || session.getAttribute("permiso").equals("Administrador") == false) {
            response.sendRedirect("./index"); 
            return;
        }
        
        String url = getServletContext().getInitParameter("url");
        String user = getServletContext().getInitParameter("user");
        String pass = getServletContext().getInitParameter("pass");
        
        List<Nino> ninos = new ArrayList<>();
        
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url, user, pass)) {
                String buscar;
                String sql;
                if ((buscar = request.getParameter("buscar")) != null) {
                    request.setAttribute("buscar", buscar);
                    sql = "SELECT id, nombre, fecha_nac, grado_escolar, sexo, direccion, tel, programa, alergias FROM Nino WHERE nombre LIKE ? AND estado='activo';";
                } else {
                    sql = "SELECT id, nombre, fecha_nac, grado_escolar, sexo, direccion, tel, programa, alergias FROM Nino WHERE estado='activo';";
                }
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    if (buscar != null) {
                        ps.setString(1, "%" + buscar + "%");
                    }
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        Nino nino = new Nino();
                        nino.setId(rs.getInt("id"));
                        nino.setNombre(rs.getString("nombre"));
                        nino.setFechaNac(rs.getDate("fecha_nac"));
                        nino.setGradoEscolar(rs.getString("grado_escolar"));
                        nino.setSexo(rs.getString("sexo"));
                        nino.setDireccion(rs.getString("direccion"));
                        nino.setTelefono(rs.getInt("tel"));
                        nino.setPrograma(rs.getString("programa"));
                        nino.setAlergias(rs.getString("alergias"));
                        ninos.add(nino);
                    }
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ListaNinos.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("ninos", ninos);
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/listaDeNinos.jsp");
        disp.include(request, response);
    }

}
