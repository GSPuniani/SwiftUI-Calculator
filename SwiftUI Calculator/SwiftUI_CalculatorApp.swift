//
//  SwiftUI_CalculatorApp.swift
//  SwiftUI Calculator
//
//  Created by Gobind Puniani on 2/3/21.
//

import SwiftUI

@main
struct SwiftUI_CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(GlobalState())
        }
    }
}
