import SwiftUI

struct FlightDetailView: View {
    let flight: FlightInformation
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Flight: \(flight.airline) \(flight.number)")
                    .font(.title)
                    .frame(alignment: .leading)
                Spacer()
            }
            Text("\(flight.direction == .departure ? "To: \(flight.otherAirport)" : "From: \(flight.otherAirport)")")
            Text("Gate: \(flight.gate)")
            Text("\(flight.flightStatus)")
                .foregroundStyle(Color(flight.timelineColor))
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

#Preview {
    FlightDetailView(flight: FlightInformation.generateFlight())
}
