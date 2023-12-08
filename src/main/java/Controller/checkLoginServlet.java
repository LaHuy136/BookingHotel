package Controller;

import java.io.IOException;
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
			String role = (String)session.getAttribute("role");
			if("admin".equals(role)) {
				bkArray = BO.getInfoBooking();
				request.setAttribute("bkArray", bkArray);
				RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
			    rd.forward(request, response);
			}
			else {
				String roomname= (String) session.getAttribute("RoomName");
				String roomid = (String) session.getAttribute("RoomID");
				roomArray = BO.getInfoRoom(session);
				request.setAttribute("RoomID", roomid);
				request.setAttribute("RoomName", roomname);
				request.setAttribute("roomArray", roomArray);
				RequestDispatcher rd = request.getRequestDispatcher("User.jsp");
			    rd.forward(request, response);
			}
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		    rd.forward(request, response);
		}
	}

}
