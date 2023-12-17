package Controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import Model.BO.BookingBO;

@WebServlet("/requestBKServlet")
public class requestBKServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public requestBKServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookingBO BO = new BookingBO();
		String update = request.getParameter("update");
		String delete = request.getParameter("delete");
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String BookingID = request.getParameter("BookingID");
		String RoomID = request.getParameter("RoomID");
		String NumGuest = request.getParameter("NumGuest");
		String checkinDateStr = request.getParameter("CheckInDate");
		String checkoutDateStr = request.getParameter("CheckOutDate");
		String TotalPrice = request.getParameter("TotalPrice").replace("$", "");
		String Status = request.getParameter("Status");
		
		Date checkinDate = null;
		Date checkoutDate = null;
		try {
			checkinDate = dateFormat.parse(checkinDateStr);
			checkoutDate = dateFormat.parse(checkoutDateStr);
			java.sql.Timestamp checkinTimestamp = new java.sql.Timestamp(checkinDate.getTime());
	        java.sql.Timestamp checkoutTimestamp = new java.sql.Timestamp(checkoutDate.getTime());

			if("Update".equals(update)) {
				if(BO.updateBooking(RoomID, NumGuest, checkinTimestamp, checkoutTimestamp, Integer.parseInt(TotalPrice),Status)) {
					JOptionPane.showMessageDialog(null, "Update booking successful!");
					RequestDispatcher rd = request.getRequestDispatcher("./frame/bookings.jsp");
				    rd.forward(request, response);
				}
				else {
					 JOptionPane.showMessageDialog(null, "Failed to update booking", "Error", JOptionPane.ERROR_MESSAGE); 
				}
			}
			else if("Delete".equals(delete)) {
				if(BO.deleteBooking(Integer.parseInt(BookingID))) {
					JOptionPane.showMessageDialog(null, "Delete booking successful!");
					RequestDispatcher rd = request.getRequestDispatcher("./frame/bookings.jsp");
				    rd.forward(request, response);
				}
				else {
					 JOptionPane.showMessageDialog(null, "Failed to delete booking", "Error", JOptionPane.ERROR_MESSAGE); 
				}
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
	}

}
