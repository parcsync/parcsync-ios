//
//  CodeView.swift
//  ParcSync
//
//  Created by Deni Ochiche on 15/01/2026.
//

import SwiftUI

struct CodeView: View {
    
    @State private var code: String = ""
    @FocusState private var isTextFieldFocused: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            
            VStack{
                Image("shield")
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
                Text("Enter Code").font(.title2).fontWeight(.semibold)
                
                VStack(alignment: .leading){
                    Text("We sent a verification code to your email address.").font(.callout).foregroundStyle(.secondary)
                    Text("wisdomochiche@gmail.com")
                        .font(Font.callout.weight(.semibold)).tint(.black)
                }
            }
            
            HStack(spacing: 12) {
                ForEach(0..<6, id: \.self) { index in
                    if getDigit(at: index).isEmpty {
                        
                        VStack{
                            RoundedRectangle(cornerRadius: 6).fill(Color(.systemGray4)).frame(width: 10, height: 2)
                        }
                        .frame(width: 50, height: 50)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(.systemGray6))
                        )
                        
                    } else {
                        Text(getDigit(at: index))
                            .font(.system(size: 21, weight: .medium, design: .monospaced))
                            .frame(width: 50, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color(.systemGray6))
                            )
                    }
                }
            }
            .overlay(
                TextField("", text: $code)
                    .focused($isTextFieldFocused)
                    .keyboardType(.numberPad)
                    .opacity(0.01)
                    
                    .onChange(of: code) { newValue, oldValue in
                        code = String(newValue.filter { $0.isNumber }.prefix(6))
                        
                    }
                    
                // Hidden but captures input
            )
            .onAppear {
                isTextFieldFocused = true
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
    
    func getDigit(at index: Int) -> String {
        guard index < code.count else { return "" }
        return String(code[code.index(code.startIndex, offsetBy: index)])
    }
}

#Preview {
    CodeView().padding()
}
