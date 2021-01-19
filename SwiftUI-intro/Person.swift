//
//  Person.swift
//  SwiftUI-intro
//
//  Created by David Svensson on 2021-01-19.
//

import Foundation

struct Person : Identifiable {
    var id = UUID()
    
    var firstName : String
    var lastName: String

}
