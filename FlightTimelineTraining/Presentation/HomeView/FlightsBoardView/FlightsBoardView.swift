import SwiftUI

struct FlightsBoardView: View {
    let flights: [FlightInformation]
    let title: String
    var body: some View {
        List(flights) { flight in
            NavigationLink(destination: { FlightDetailView(flight: flight) }) {
                FlightRowView(flight: flight)
            }
        }
        .listStyle(.plain)
        .navigationTitle(title)
    }
}

#Preview {
    FlightsBoardView(flights: FlightInformation.generateFlights(), title: "")
}
