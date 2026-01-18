//
//  ContentView.swift
//  ParcSync
//
//  Created by Deni Ochiche on 15/01/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAuthenticated: Bool = false;
    
    var body: some View {
        VStack {
            
           IntroView()
        }
       
    }
}

#Preview {
    ContentView()
}
