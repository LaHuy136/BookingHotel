package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import Model.BO.BookingBO;

@WebServlet("/handleContactServlet")
public class handleContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public handleContactServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookingBO BO = new BookingBO();
		String update = request.getParameter("update");
		String delete = request.getParameter("delete");
		String Name = request.getParameter("Name");
		String Email = request.getParameter("Email");
		String Phone = request.getParameter("Phone");
		String Message = request.getParameter("Message");
		
		if("Update".equals(update)) {
			if(BO.updateContact(Name, Email, Phone, Message)) {
				JOptionPane.showMessageDialog(null, "Update contact successful!");
				RequestDispatcher rd = request.getRequestDispatcher("./frame/contact.jsp");
			    rd.forward(request, response);
			}
			else {
				 JOptionPane.showMessageDialog(null, "Failed to update contact", "Error", JOptionPane.ERROR_MESSAGE); 
			}
		}
		else if("Delete".equals(delete)) {
			if(BO.deleteContact(Name)) {
				JOptionPane.showMessageDialog(null, "Delete contact successful!");
				RequestDispatcher rd = request.getRequestDispatcher("./frame/contact.jsp");
			    rd.forward(request, response);
			}
			else {
				 JOptionPane.showMessageDialog(null, "Failed to delete contact", "Error", JOptionPane.ERROR_MESSAGE); 
			}
		}
		
	}

}
