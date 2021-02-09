//
//  Extensions.swift
//  SwiftUI Calculator
//
//  Created by Gobind Puniani on 2/8/21.
//

import Foundation

// Source: https://www.hackingwithswift.com/example-code/strings/how-to-read-a-single-character-from-a-string

//Adds subscript to string
extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}
