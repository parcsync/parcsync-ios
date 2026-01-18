//
//  EmailAuthView.swift
//  ParcSync
//
//  Created by Deni Ochiche on 15/01/2026.
//

import SwiftUI

struct EmailAuthView: View {
    
    @State private var email: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            
            VStack{
                Image("envelope")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24)
                    .foregroundStyle(.gray)
            }
            .padding(12)
            .background(
                Circle()
                    .fill(.colorGrey)
            )
            VStack(alignment: .leading, spacing: 4) {
                Text("Continue with Email").font(.title2).fontWeight(.semibold)
                    .foregroundStyle(.colorDark)
                
                Text("Sign in or sign up with email").font(.callout).foregroundStyle(.secondary)
            }
            
            TextField("Email address", text: $email)
                .padding(12)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.colorGrey)
                )
            
            Spacer()
            
            Button{} label: {
                Text("Continue").fontWeight(.medium)
                    .padding(8)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.glassProminent).tint(.colorDark)
        }.padding()
    }
}

#Preview {
    EmailAuthView()
}
