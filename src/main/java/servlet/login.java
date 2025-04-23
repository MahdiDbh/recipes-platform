package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.mindrot.jbcrypt.BCrypt;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import JWT.JwtUtil;
import java.util.regex.Pattern;
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public login() {
        // TODO Auto-generated constructor stub
    }
    private boolean isValidEmail(String email) {
        String emailRegex = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
        return Pattern.matches(emailRegex, email);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
	}
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if (email == null || email.isEmpty() || !isValidEmail(email)) {
            request.setAttribute("message", "❌ Invalid email format!");
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
        }
        if ( password.isEmpty()) {
            request.setAttribute("message", "❌ Password can not be empty");
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
        }
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/WebApp", "root", "");
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM users WHERE email = ?");
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                String storedHashedPassword = rs.getString("password");
                if (!BCrypt.checkpw(password, storedHashedPassword)) {
                    request.setAttribute("message", "❌ Incorrect password!");
                } else {
                	System.out.println("helloooooooooooooooooooooooooooooo :"+ BCrypt.checkpw(password, storedHashedPassword));
                	int userId = rs.getInt("id");
                	
                	
                    response.sendRedirect(request.getContextPath() + "/home");
                    return;
            }
            } else {
            		request.setAttribute("message", "❌ Email not found!");
            }
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
            rs.close();
            stmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("<p>Error: " + e.getMessage() + "</p>");
        }
    }

}