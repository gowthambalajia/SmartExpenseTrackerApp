<%@ page session="true" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.smart.util.DBConnection" %>

<html>
<head>
    <title>View Expenses</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">
    <h2>Your Expenses</h2>

    <table>
        <tr>
            <th>Category</th>
            <th>Amount</th>
        </tr>

        <%
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT category, amount FROM expenses WHERE username=?"
            );
            ps.setString(1, (String)session.getAttribute("username"));

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("category") %></td>
            <td><%= rs.getInt("amount") %></td>
        </tr>
        <% } %>

    </table>

    <a href="addExpense.jsp">Add Another Expense</a>
    <a href="dashboard.jsp">Back to Dashboard</a>

</div>

</body>
</html>
