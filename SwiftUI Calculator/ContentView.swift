//
//  ContentView.swift
//  SwiftUI Calculator
//
//  Created by Gobind Puniani on 2/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 8) {
                HStack {
                    Text("3.14")
                        .font(.system(size: 50))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: 50, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 30, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottomTrailing)
                        .padding()
                        .foregroundColor(.white)
                }
                HStack(spacing: 8) {
                    self.makeButton(title: "C", color: Color(white: 0.23, opacity: 1.0))
                    self.makeButton(title: "+/-", color: Color(white: 0.23, opacity: 1.0))
                    self.makeButton(title: "%", color: Color(white: 0.23, opacity: 1.0))
                    self.makeButton(title: "÷", color: .orange)
                }
                
                HStack(spacing: 8) {
                    self.makeButton(title: "7")
                    self.makeButton(title: "8")
                    self.makeButton(title: "9")
                    self.makeButton(title: "⨉", color: .orange)
                }
                
                HStack(spacing: 8) {
                    self.makeButton(title: "6")
                    self.makeButton(title: "5")
                    self.makeButton(title: "4")
                    self.makeButton(title: "−", color: .orange)
                }
                
                HStack(spacing: 8) {
                    self.makeButton(title: "3")
                    self.makeButton(title: "2")
                    self.makeButton(title: "1")
                    self.makeButton(title: "+", color: .orange)
                }
                
                HStack(spacing: 8) {
                    self.makeButton(title: "0")
                    self.makeButton(title: ".")
                    self.makeButton(title: "=", width: 195, color: .orange)
                }
            }
            Spacer()
        }
    }
    
    func makeButton(title: String = "0", width: CGFloat = 95, height: CGFloat = 95, color: Color = Color(white: 0.5)) -> some View {
        return AnyView(Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text(title)
                .frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(color)
                .cornerRadius(height / 2)
                .font(.system(size: 36))
                .foregroundColor(.white)
        }))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
