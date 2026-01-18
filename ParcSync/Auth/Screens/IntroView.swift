//
//  IntroView.swift
//  ParcSync
//
//  Created by Deni Ochiche on 17/01/2026.
//

import SwiftUI

struct IntroView: View {
    
    @State private var showSSO: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top ) {
               GradientView()
                .opacity(1)
                .ignoresSafeArea()
                
                
                ZStack {
                    ZStack{
                        Circle().fill(.white).opacity(0.34).frame(width: 258)
                        Circle().stroke(.white, lineWidth: 1.15).opacity(0.34).frame(width: 258)
                            .zIndex(1)
                    }
                    
                    ZStack{
                        Circle().fill(.white).opacity(0.19).frame(width: 418)
                        Circle().stroke(.white, lineWidth: 1.15).opacity(0.95).frame(width: 258)
                            .zIndex(1)
                    }
                    
                    ZStack{
                        Circle().fill(.white).opacity(0.19).frame(width: 572)
                        Circle().stroke(.white, lineWidth: 1.15).opacity(0.95).frame(width: 258)
                            .zIndex(1)
                    }
                }.ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    ZStack {
                        SSOView(showSSO: $showSSO).opacity(showSSO ? 1 : 0).animation(.easeInOut, value: showSSO)
                       
                        GetStartedView(showSSO: $showSSO)
                      .opacity(showSSO ? 0 : 1).animation(.easeInOut, value: showSSO)
                    }
                    
                }.padding()
                    .frame(maxWidth: 300)
                
                
            }
        }
        
        
        
    }
}

#Preview {
    IntroView()
}
