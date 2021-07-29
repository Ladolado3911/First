//
//  Scope.swift
//  ChessTrainer2
//
//  Created by lado tsivtsivadze on 7/29/21.
//

import UIKit


struct Scope {
    var low: Int!
    var high: Int!
    
    init(_ low: Int, _ high: Int) {
        self.low = low
        self.high = high
    }
}

enum Difficulty {
    case beginner(Scope)
    case junior(Scope)
    case experienced(Scope)
    case master(Scope)
}
