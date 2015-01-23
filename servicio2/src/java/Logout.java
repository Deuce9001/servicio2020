import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession();
                
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/AltaUsuarios.jsp");
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
        
        session.setAttribute("username",null);
        session.setAttribute("permiso",null);
        
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
        rd.include(request,response);
    }

}
