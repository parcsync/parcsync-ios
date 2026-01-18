//
//  GradientView.swift
//  ParcSync
//
//  Created by Deni Ochiche on 18/01/2026.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        RadialGradient(stops: [
            .init(color: .colorYellow, location: 0),
            .init(color: .colorGreen, location: 0.34),
            .init(color: .colorPurple, location: 0.59),
            .init(color: .white, location: 0.89)
        ], center: .topTrailing, startRadius: 0, endRadius: 1000)
    }
}

#Preview {
    GradientView()
}
