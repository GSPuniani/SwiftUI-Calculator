//
//  ContentView.swift
//  SwiftUI Calculator
//
//  Created by Gobind Puniani on 2/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("3.14")
                    .font(.system(size: 50))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 50, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottomTrailing)
                    .padding()
            }
            HStack {
                self.makeButton(title: "C")
                self.makeButton(title: "+/-")
                self.makeButton(title: "%")
                self.makeButton(title: "/")
            }
            
            HStack {
                self.makeButton(title: "7")
                self.makeButton(title: "8")
                self.makeButton(title: "9")
                self.makeButton(title: "⨉")
            }
            
            HStack {
                self.makeButton(title: "6")
                self.makeButton(title: "5")
                self.makeButton(title: "4")
                self.makeButton(title: "−")
            }
            
            HStack {
                self.makeButton(title: "3")
                self.makeButton(title: "2")
                self.makeButton(title: "1")
                self.makeButton(title: "+")
            }
            
            HStack {
                self.makeButton(title: "0")
                self.makeButton(title: ".")
                self.makeButton(title: "=", width: 147)
            }
        }
    }
    
    func makeButton(title: String = "0", width: CGFloat = 70, height: CGFloat = 70, color: Color = .orange) -> some View {
        return AnyView(Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text(title)
                .frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(color)
                .cornerRadius(35)
                .font(.system(size: 24))
                .foregroundColor(.white)
        }))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
