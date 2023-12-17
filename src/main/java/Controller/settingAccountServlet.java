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

@WebServlet("/settingAccountServlet")
public class settingAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public settingAccountServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookingBO BO = new BookingBO();
		String update = request.getParameter("update");
		String delete = request.getParameter("delete");
		String UserID = request.getParameter("UserID");
		String UserName = request.getParameter("Username");
		String Email = request.getParameter("Email");
		String Pw = request.getParameter("Pw");
		String Role = request.getParameter("Role");
		
		if("Update".equals(update)) {
			if(BO.updateAccount(Integer.parseInt(UserID),UserName, Pw, Email, Role)) {
				JOptionPane.showMessageDialog(null, "Update account successful!");
				RequestDispatcher rd = request.getRequestDispatcher("./frame/users.jsp");
			    rd.forward(request, response);
			}
			else {
				 JOptionPane.showMessageDialog(null, "Failed to update account", "Error", JOptionPane.ERROR_MESSAGE); 
			}
		}
		else if("Delete".equals(delete)) {
			if(BO.deleteAccount(Integer.parseInt(UserID))) {
				JOptionPane.showMessageDialog(null, "Delete account successful!");
				RequestDispatcher rd = request.getRequestDispatcher("./frame/users.jsp");
			    rd.forward(request, response);
			}
			else {
				JOptionPane.showMessageDialog(null, "Failed to delete account", "Error", JOptionPane.ERROR_MESSAGE); 
			}
		}
	}

}
