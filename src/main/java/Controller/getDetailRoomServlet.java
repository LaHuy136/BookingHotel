package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

import Model.BO.BookingBO;
import Model.Bean.Room;

/**
 * Servlet implementation class getDetailRoomServlet
 */
@WebServlet("/getDetailRoomServlet")
public class getDetailRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getDetailRoomServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookingBO BO = new BookingBO();
		HttpSession session = request.getSession();
		String RoomName = (String) request.getAttribute("RoomName");
		String RoomID = (String) request.getAttribute("RoomID");
		String Price = (String) request.getAttribute("Price");
		
		PrintWriter pr = response.getWriter();
		pr.println(RoomName);
		pr.println(RoomID);
		pr.println(Price);
//		RequestDispatcher rd = request.getRequestDispatcher("Index.jsp");
//	    rd.forward(request, response);
	}

}
