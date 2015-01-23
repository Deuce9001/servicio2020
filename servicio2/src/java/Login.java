import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/index.jsp");
        disp.include(request, response);        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        
        String pass = getServletContext().getInitParameter("pass");
        String user = getServletContext().getInitParameter("user");
        String url = getServletContext().getInitParameter("url");
                
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        String permiso = null;
        String jspUrl = null;
       
        String sql = "SELECT * FROM usuario WHERE usuario=? AND password=?;";
        
        try{ Class.forName("com.mysql.jdbc.Driver");
            try(Connection con = DriverManager.getConnection(url,user,pass)) {
                try(PreparedStatement ps = con.prepareStatement(sql)){
                    ps.setString(1,username);
                    ps.setString(2,password);
                    ResultSet rs = ps.executeQuery();
                    if(!rs.next())
                        permiso = null;
                    if(rs.getString("usuario").equals("username")==false)
                        permiso = null;
                    if(rs.getString("password").equals("password")==false)
                        permiso = null;
                    permiso = rs.getString("permiso");
                    
                    if(permiso==null){
                        jspUrl = "/index.jsp";
                    } else {
                        session.setAttribute("username", rs.getString("usuario"));
                        session.setAttribute("permiso", rs.getString("permiso"));
                        jspUrl = "/inicio.jsp";
                    }
                                        
                    RequestDispatcher disp = getServletContext().getRequestDispatcher(jspUrl);
                    disp.include(request, response); 
                    
                }
            }
        } catch (ClassNotFoundException | SQLException  ex) {
            request.setAttribute("error", "true");
            request.setAttribute("res", "Error: " + ex.getMessage());
            doGet(request, response);        
        }
    }
        
        
        
        
        
        /*
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        
        String url = getServletContext().getInitParameter("url");
        String user = getServletContext().getInitParameter("user");
        String pass = getServletContext().getInitParameter("pass");
        
        try {
            java.sql.Driver d = new com.mysql.jdbc.Driver();  
            try (Connection con = DriverManager.getConnection(url, user, pass)) {
                String permiso = Login.verifyLogin(username, password, con);
                String jspUrl = null;
                if (permiso == null){
                    jspUrl = "Login";
                }else{
                    session.setAttribute("username", username);
                    session.setAttribute("permiso", permiso);
                }
                response.sendRedirect(jspUrl);
                doGet(request, response);
            }
        }
        catch (SQLException ex){
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("error", "true");
            request.setAttribute("res", "Username o contraseña incorrectos, intente de nuevo");
            doGet(request, response);
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
    }    */
    
}
            
