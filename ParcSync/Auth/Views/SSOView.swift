//
//  SSOView.swift
//  ParcSync
//
//  Created by Deni Ochiche on 18/01/2026.
//

import SwiftUI

struct SSOView: View {
    
    @Binding var showSSO: Bool
    
    var body: some View {
        VStack {
            Text("Get Started.").font(.system(size: 26)).fontWeight(.heavy)
                .foregroundStyle(.colorDark)
            
                .multilineTextAlignment(.center)
            
            Button{
                showSSO.toggle()
            } label: {
                Text("Continue with Apple").fontWeight(.semibold)
                    .frame(height: 30)
                    .frame(maxWidth: .infinity)
            }.buttonStyle(.borderedProminent).tint(.colorDark)
            Button{
                showSSO.toggle()
            } label: {
                Text("Continue with Google")
                    .foregroundStyle(.colorDark)
                    .fontWeight(.semibold)
                    .frame(height: 30)
                    .frame(maxWidth: .infinity)
            }.buttonStyle(.borderedProminent).tint(.white)
                .overlay{
                    RoundedRectangle(cornerRadius: 100).stroke(.colorDark, lineWidth: 1)
                }
            NavigationLink {
                EmailAuthView()
            } label: {
                Text("Continue with Email").foregroundStyle(.colorDark).fontWeight(.semibold)
                    .padding()
                    .frame(height: 45)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderedProminent).tint(.white)
                        .overlay{
                            RoundedRectangle(cornerRadius: 100).stroke(.colorDark, lineWidth: 1)
                        }
            }
        }
    }
}

#Preview {
    VStack {
        Spacer()
        
        SSOView(showSSO: .constant(false)).padding()
    }
}


