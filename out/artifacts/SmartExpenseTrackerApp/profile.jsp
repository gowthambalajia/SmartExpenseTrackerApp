<%@ page session="true" %>
<html>
<head>
    <title>Profile</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">
    <h2>User Profile</h2>

    <p><b>Username:</b> <%= session.getAttribute("username") %></p>
    <p><b>Account Type:</b> Personal</p>
    <p><b>Member Since:</b> 2026</p>

    <hr>

    <a href="dashboard.jsp">Dashboard</a>
    <a href="viewExpenses.jsp">View Expenses</a>
    <a href="addExpense.jsp">Add Expense</a>
    <a href="logout.jsp">Logout</a>

</div>

</body>
</html>
