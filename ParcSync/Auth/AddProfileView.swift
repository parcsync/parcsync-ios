//
//  AddProfileView.swift
//  ParcSync
//
//  Created by Deni Ochiche on 15/01/2026.
//

import SwiftUI

struct AddProfileView: View {
    @State private var name: String = ""
    @State private var username: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            
            VStack{
                Image(systemName: "person")
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
                Text("Your Profile Photo").font(.title2).fontWeight(.semibold)
                
                Text("Introduce yourself to Parcsync and others.").font(.callout).foregroundStyle(.secondary)
            }
            
            VStack(alignment: .leading) {
                Text("Name")
                    .font(.callout).foregroundStyle(.secondary)
                TextField("Your name", text: $name)
                    .padding(12)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(.systemGray6))
                    )
            }
            
            VStack(alignment: .leading) {
                Text("Username")
                    .font(.callout).foregroundStyle(.secondary)
                TextField("@parcsync_", text: $username)
                    .padding(12)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(.systemGray6))
                    )
            }
            
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
    AddProfileView().padding()
}
