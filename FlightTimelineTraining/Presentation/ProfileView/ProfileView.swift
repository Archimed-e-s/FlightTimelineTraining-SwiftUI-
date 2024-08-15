//
//  ProfileView.swift
//  FlightTimelineTraining
//
//  Created by mac on 15.08.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 250, height: 250)
                .opacity(0.2)
        }
    }
}

#Preview {
    ProfileView()
}
