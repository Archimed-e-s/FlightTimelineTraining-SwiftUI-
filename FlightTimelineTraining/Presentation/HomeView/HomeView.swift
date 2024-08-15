import SwiftUI

struct HomeView: View {
    let flights = FlightInformation.generateFlights()
    
    var arrivals: [FlightInformation] {
        return flights.filter({ $0.direction == .arrival })
    }
    
    var departure: [FlightInformation] {
        return flights.filter({ $0.direction == .departure })
    }

    var body: some View {
        NavigationStack {
            ZStack {
                Image(systemName: "airplane")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .rotationEffect(.degrees(-90))
                    .opacity(0.2)
                VStack(alignment: .leading) {
                    NavigationLink("Arrival") {
                        FlightsBoardView(flights: arrivals, title: "Arrival")
                    }
                    NavigationLink("Departure") {
                        FlightsBoardView(flights: departure, title: "Departure")
                    }
                    NavigationLink("Timeline") {
                        FlightsBoardView(flights: flights, title: "Timeline")
                    }
                    Spacer()
                }
                .font(.title)
                .navigationTitle("Airport")
            }
        }
    }
}

#Preview {
    HomeView()
}
