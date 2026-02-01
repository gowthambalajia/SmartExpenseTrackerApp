<html>
<head>
    <title>Add Expense</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">
    <h2>Add Expense</h2>

    <form action="AddExpenseServlet" method="post">

    <select name="category">
            <option>Salary</option>
            <option>Food</option>
            <option>Rent</option>
            <option>Travel</option>
            <option>Shopping</option>
        </select>

        <input type="number" name="amount" placeholder="Amount" required>
        <button>Add</button>
    </form>

</div>
</body>
</html>
