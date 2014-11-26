import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/inicio.jsp");
        disp.include(request, response);        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("usuario");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        
        String url = getServletContext().getInitParameter("url");
        String user = getServletContext().getInitParameter("user");
        String pass = getServletContext().getInitParameter("pass");
        
        
        
        try {
                java.sql.Driver d=new com.mysql.jdbc.Driver();  
                try (Connection con = DriverManager.getConnection(url, user, pass)) {
                String permiso = Login.verifyLogin(username, password, con);
                String jspUrl = null;
                
                if (permiso == null){
                    jspUrl = "Login";
                }else{
                    session.setAttribute("usuario", username);
                    session.setAttribute("permiso", permiso);
                    //tipos de permisos... falta ese codigo
                }
                response.sendRedirect(jspUrl);
            }
        }
        
        
        
        
        
        
        
        catch (SQLException ex){
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static String verifyLogin(String username, String password, Connection con)
    throws SQLException
    {
        PreparedStatement stat = con.prepareStatement("select * from Usuario where usuario=?;"); //Era PreparedStatement stat = con.prepareStatement("select * from Usuario where username=?;")
        stat.setString(1, username);
        ResultSet res = stat.executeQuery();
        if (!res.next())
            return null;
        
        if (res.getString("usuario").equals(username) == false)
            return null;
        
        int salt = res.getInt("salt");
        
        if (res.getString("password").equals(SHA256(password + salt)) == false)
            return null;
        
        return res.getString("permiso");
    }
    
 
    public static String SHA256(String value)
    {
        try
        {
            StringBuilder hexString = new StringBuilder(64);
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hash = md.digest((value).getBytes());

            for (int i = 0; i < hash.length; i++)
            {
                if ((0xFF & hash[i]) < 0x10)
                {
                    hexString.append("0").append(Integer.toHexString((0xFF & hash[i])));
                }
                else
                {
                    hexString.append(Integer.toHexString(0xFF & hash[i]));
                }
            }
            return hexString.toString();
        }
        catch(NoSuchAlgorithmException e)
        {
            throw new RuntimeException(e); //Never happens
        }
    }    
    
}
                
/*                try (PreparedStatement ps = con.prepareStatement(sql)) {
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
} */