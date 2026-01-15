//
//  EmailAuth.swift
//  ParcSync
//
//  Created by Deni Ochiche on 15/01/2026.
//

import SwiftUI

struct EmailAuth: View {
    
    @State private var email: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            
            VStack{
                Image("envelope")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24)
                    .foregroundStyle(.secondary)
            }
            .padding(12)
            .background(
                Circle()
                    .fill(Color(.systemGray6))
            )
            VStack(alignment: .leading, spacing: 4) {
                Text("Continue with Email").font(.title2).fontWeight(.semibold)
                
                Text("Sign in or sign up with email").font(.callout).foregroundStyle(.secondary)
            }
            
            TextField("Email address", text: $email)
                .padding(12)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color(.systemGray6))
                )
            
            Spacer()
            
            Button{} label: {
                Text("Continue").fontWeight(.medium)
                    .padding(8)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.glassProminent).tint(.black)
        }
    }
}

#Preview {
    EmailAuth().padding()
}
