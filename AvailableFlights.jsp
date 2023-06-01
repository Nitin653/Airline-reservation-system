<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Available Flights</title>
</head>
<body>
    <h1>Available Flights</h1>
    <table>
        <tr>
            <th>Flight Number</th>
            <th>Origin</th>
            <th>Destination</th>
            <th>Available Seats</th>
        </tr>
        <c:forEach var="flight" items="${flights}">
            <tr>
                <td>${flight.flightNumber}</td>
                <td>${flight.origin}</td>
                <td>${flight.destination}</td>
                <td>${flight.availableSeats}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
