import SwiftUI

struct FlightRowView: View {
    let flight: FlightInformation
    var body: some View {
        HStack {
            Text("\(flight.airline) \(flight.number)")
                .frame(width: 120, alignment: .leading)
            Text("\(flight.otherAirport)")
            Spacer()
            Text("\(flight.flightStatus)")
                .foregroundStyle(Color(flight.timelineColor))
        }
    }
}

#Preview {
    FlightRowView(flight: FlightInformation.generateFlight())
}
