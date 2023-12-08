package Controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BO.BookingBO;
import Model.Bean.Booking;

@WebServlet("/bookRoomServlet")
public class bookRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public bookRoomServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookingBO BO = new BookingBO();
		ArrayList<Booking> bkArray = null;
	    
		String roomid = request.getParameter("roomid");
		String checkinDateStr = request.getParameter("checkindate");
	    String checkoutDateStr = request.getParameter("checkoutdate");
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

	    Date checkinDate = null;
	    Date checkoutDate = null;
		try {
			checkinDate = dateFormat.parse(checkinDateStr);
			checkoutDate = dateFormat.parse(checkoutDateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	 
		
	    
	    String adultGuests = request.getParameter("adultguest");
	    String children = request.getParameter("children");
	    String nights = request.getParameter("night");
	    String status = "Pending";
	    int numberGuests = Integer.parseInt(adultGuests) + Integer.parseInt(children);
	    int priceonenight = Integer.parseInt(request.getParameter("price").substring(0, 3));
	    int totalprice = (Integer.parseInt(children) * 5) + (Integer.parseInt(adultGuests) * 10) + (priceonenight * Integer.parseInt(nights)) ;

	   if(BO.insertBooking(roomid, numberGuests, checkinDate, checkoutDate, totalprice, status)) {
			bkArray = BO.getInfoBooking();
			request.setAttribute("bkArray", bkArray);
			RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
		    rd.include(request, response);
	   }
	}

}
