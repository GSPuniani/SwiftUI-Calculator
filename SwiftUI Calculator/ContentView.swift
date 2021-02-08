//
//  ContentView.swift
//  SwiftUI Calculator
//
//  Created by Gobind Puniani on 2/3/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var env: GlobalState
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 8) {
                HStack {
                    Text(env.display)
                        .font(.system(size: 50))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: 50, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 30, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottomTrailing)
                        .padding()
                        .foregroundColor(.white)
                }
                HStack(spacing: 8) {
                    self.makeButton(key: .allClear, color: Color(white: 0.23, opacity: 1.0))
                    self.makeButton(key: .plusMinus, color: Color(white: 0.23, opacity: 1.0))
                    self.makeButton(key: .percent, color: Color(white: 0.23, opacity: 1.0))
                    self.makeButton(key: .divide, color: .orange)
                }
                
                HStack(spacing: 8) {
                    self.makeButton(key: .seven)
                    self.makeButton(key: .eight)
                    self.makeButton(key: .nine)
                    self.makeButton(key: .multiply, color: .orange)
                }
                
                HStack(spacing: 8) {
                    self.makeButton(key: .six)
                    self.makeButton(key: .five)
                    self.makeButton(key: .four)
                    self.makeButton(key: .minus, color: .orange)
                }
                
                HStack(spacing: 8) {
                    self.makeButton(key: .three)
                    self.makeButton(key: .two)
                    self.makeButton(key: .one)
                    self.makeButton(key: .plus, color: .orange)
                }
                
                HStack(spacing: 8) {
                    self.makeButton(key: .zero)
                    self.makeButton(key: .dot)
                    self.makeButton(key: .equal, width: 195, color: .orange)
                }
            }
            Spacer()
        }
    }
    
    func makeButton(key: CalculatorKey = .zero, width: CGFloat = 95, height: CGFloat = 95, color: Color = Color(white: 0.5)) -> some View {
        return AnyView(Button(action: {
            env.keyPressed(key: key)
        }, label: {
            Text(key.rawValue)
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
        ContentView().environmentObject(GlobalState())
    }
}
