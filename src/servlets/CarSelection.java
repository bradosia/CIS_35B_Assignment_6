package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** The simplest possible servlet.
 *
 * @author James Duncan Davidson */

public class CarSelection extends HttpServlet {
	private static final long serialVersionUID = 4800503148201277286L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// get automobile key
		String automobileKey = request.getParameter("automobileKey");
		// set response
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		out.println("<html>");
		out.println("<head>");

		String title = "Car Configuration";
		String header = "Basic Car Choice";

		out.println("<title>" + title + "</title>");
		out.println("</head>");
		out.println("<body style=\"background-color: white\">");

		out.println("<a href=\"/examples/servlets/helloworld.html\">");
		out.println("<img src=\"/examples/images/code.gif\" height=24 "
			+ "width=24 align=right border=0 alt=\"view code\"></a>");
		out.println("<a href=\"/examples/servlets/index.html\">");
		out.println("<img src=\"/examples/images/return.gif\" height=24 "
			+ "width=24 align=right border=0 alt=\"return\"></a>");
		out.println("<h1>" + header + "</h1>");

		// form start
		out.println("<form action=\"/webapps/KBB/jsp/CarPrice.jsp\">");
		out.println("<table>");
		out.println("<tr><td>Year/Make/Model</td>");
		out.println("<td>" + automobileKey + "</td>");
		out.println("</tr>");
		out.println("<tr><td colspan=\"2\" style=\"text-align: right\">");
		out.println("<input type=\"submit\" value=\"Send Request\"></td>");
		out.println("</tr>");
		out.println("</table></form>");
		// form end
		
		out.println("</body>");
		out.println("</html>");
	}
}
