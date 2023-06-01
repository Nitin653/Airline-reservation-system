
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.airlines.AirlinesReservationSystem;
import com.example.airlines.Flight;

public class SearchFlightsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String origin = request.getParameter("origin");
        String destination = request.getParameter("destination");

        AirlinesReservationSystem reservationSystem = new AirlinesReservationSystem();
        List<Flight> availableFlights = reservationSystem.searchFlights(origin, destination);
        reservationSystem.closeConnection();

        request.setAttribute("flights", availableFlights);
        request.getRequestDispatcher("flights.jsp").forward(request, response);
    }
}
