package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.BO.BookingBO;
import Model.Bean.Booking;
import Model.Bean.Room;

@WebServlet("/checkLoginServlet")
public class checkLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public checkLoginServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookingBO BO = new BookingBO();
		HttpSession session = request.getSession();
		ArrayList<Room> roomArray = null;
		ArrayList<Booking> bkArray = null;
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		if(BO.checkLogin(email, password, session)) {
			String UserID = (String) session.getAttribute("UserID");
			String UserName = (String) session.getAttribute("UserName");
			String Email = (String) session.getAttribute("Email");
			String Role = (String) session.getAttribute("Role");
			PrintWriter printWriter = response.getWriter();
			
			printWriter.println(UserID);
			printWriter.println(UserName);
			printWriter.println(Email);
			printWriter.println(Role);
			
			
//			if("admin".equals(Role)) {
//				bkArray = BO.getInfoBooking();
//				request.setAttribute("UserID", UserID);
//				request.setAttribute("Email", Email);
//				request.setAttribute("UserName", UserName);
//				request.setAttribute("Role", Role);
//				request.setAttribute("bkArray", bkArray);
//				RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
//			    rd.forward(request, response);
//			}
//			else {
//				String Roomname= (String) session.getAttribute("RoomName");
//				String Roomid = (String) session.getAttribute("RoomID");
//				roomArray = BO.getInfoRoom(session);
//				request.setAttribute("UserName", UserName);
//				request.setAttribute("RoomID", Roomid);
//				request.setAttribute("RoomName", Roomname);
//				request.setAttribute("roomArray", roomArray);
//				RequestDispatcher rd = request.getRequestDispatcher("User.jsp");
//			    rd.forward(request, response);
//			}
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		    rd.forward(request, response);
		}
	}

}
