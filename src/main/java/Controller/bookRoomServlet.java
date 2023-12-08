package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BO.BookingBO;

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
		PrintWriter printWriter = response.getWriter();
		String roomid = request.getParameter("roomid");
		String checkinDate = request.getParameter("checkindate");
	    String checkoutDate = request.getParameter("checkoutdate");
	    String adultGuests = request.getParameter("adultguest");
	    String children = request.getParameter("children");
	    String nights = request.getParameter("night");
	    int numberGuests = Integer.parseInt(adultGuests) + Integer.parseInt(children);
	    int priceonenight = Integer.parseInt(request.getParameter("price").substring(0, 3));
	    
	    int totalprice = (Integer.parseInt(children) * 5) + (Integer.parseInt(adultGuests) * 10) + (priceonenight * Integer.parseInt(nights)) ;
	     
//	    printWriter.println(roomid); 
//	    printWriter.println(checkinDate); 
//	    printWriter.println(checkoutDate); 
//	    printWriter.println(numberGuests);  
//	    printWriter.println(totalprice); 
	    request.setAttribute("roomid", roomid);
        request.setAttribute("checkinDate", checkinDate);
        request.setAttribute("checkoutDate", checkoutDate);
        request.setAttribute("numberGuests", numberGuests);
        request.setAttribute("totalprice", totalprice);

        // Chuyển hướng đến trang Admin.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("Admin.jsp");
        dispatcher.forward(request, response);
	    
	}

}
