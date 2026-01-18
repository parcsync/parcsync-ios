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
        NavigationStack {
            ZStack(alignment: .top) {
                
                RadialGradient(stops: [.init(color: .colorYellow, location: 0.1), .init(color: .colorGreen, location: 0.4), .init(color: .colorPurple, location: 0.8)], center: .topTrailing, startRadius: -100, endRadius: 700).blur(radius: 0)
                    .frame(height: 200)
                    .overlay(alignment: .bottomLeading) {
                        Circle().foregroundStyle(.background).frame(width: 80)
                            .overlay{
                                Image(systemName: "photo.badge.plus")
                                    .font(.system(size: 30))
                            }
                            .glassEffect()
                            .offset(x: 16, y: 40)
                    }
                    
                    .ignoresSafeArea()
                 
                VStack(alignment: .leading, spacing: 14) {
                    
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Your Profile").font(.title2).fontWeight(.semibold)
                        
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
                }.padding(.horizontal)
                    .padding(.top, 150)
                    .toolbar{
                        ToolbarItem(placement: .navigationBarTrailing){
                            Button("Skip"){
                                
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    AddProfileView()
}
