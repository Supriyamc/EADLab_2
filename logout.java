import static com.mongodb.client.model.Filters.and;
import static com.mongodb.client.model.Filters.eq;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/jsp/logout")
public class logout extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public logout() { 
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost (request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		Cookie myCookies[] = request.getCookies();
		for (Cookie c : myCookies) { 
			if (c.getName().equals("my1")) { 
				c.setMaxAge(0);
				response.addCookie(c);
			}
		}
		response.sendRedirect("login_main.jsp");		
	}

}
