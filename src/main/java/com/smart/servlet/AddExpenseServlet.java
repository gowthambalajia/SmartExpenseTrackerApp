package com.smart.servlet;

import com.smart.util.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/AddExpenseServlet")   // 👈 VERY IMPORTANT
public class AddExpenseServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String category = request.getParameter("category");
        int amount = Integer.parseInt(request.getParameter("amount"));

        HttpSession session = request.getSession(false);
        String username = (String) session.getAttribute("username");

        try {
            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO expenses(username, category, amount) VALUES (?, ?, ?)"
            );

            ps.setString(1, username);
            ps.setString(2, category);
            ps.setInt(3, amount);

            ps.executeUpdate();

            // ✅ REDIRECT TO VIEW PAGE (NOT DASHBOARD)
            response.sendRedirect("viewExpenses.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
