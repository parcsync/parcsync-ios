//
//  GetStartedView.swift
//  ParcSync
//
//  Created by Deni Ochiche on 18/01/2026.
//

import SwiftUI

struct GetStartedView: View {
    
    @Binding var showSSO: Bool
    
    var body: some View {
        VStack {
            Text("Discover, Navigate and Share with the Community.").font(.system(size: 26)).fontWeight(.heavy)
                .foregroundStyle(.colorDark)
            
                .multilineTextAlignment(.center)
            
            Button{
                showSSO.toggle()
            } label: {
                Text("Get Started").fontWeight(.semibold)
                    .frame(height: 30)
                    .frame(maxWidth: .infinity)
            }.buttonStyle(.borderedProminent).tint(.colorDark)
        }
    }
}

#Preview {
    GetStartedView(showSSO: .constant(false))
}
