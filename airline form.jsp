<!DOCTYPE html>
<html>
<head>
    <title>Airline Reservation System</title>
</head>
<body>
    <h1>Airline Reservation System</h1>
    <form action="SearchFlightsServlet" method="post">
        <label>Origin:</label>
        <input type="text" name="origin" required><br>
        <label>Destination:</label>
        <input type="text" name="destination" required><br>
        <input type="submit" value="Search Flights">
    </form>
</body>
</html>
