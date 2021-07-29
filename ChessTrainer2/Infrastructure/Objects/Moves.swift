//
//  Moves.swift
//  ChessTrainer2
//
//  Created by Ladolado3911 on 5/29/21.
//

import Foundation
import UIKit

struct Moves {
    static var moves: [String] = ["e4",
                           "d4",
                           "e3",
                           "d3",
                           "e5",
                           "d5",
                           "e6",
                           "d6",
                           "Nf3",
                           "Nf6",
                           "Nc3",
                           "Nc6",
                           "Bc4",
                           "Bc5",
                           "Bd3",
                           "Bd6",
                           "Qe2",
                           "Qe6",
                           "c3",
                           "c4",
                           "f3",
                           "f4",
                           "c6",
                           "c5",
                           "f6",
                           "f5",
                           "g2",
                           "g6",
                           "b2",
                           "b6"]
    
    static var whiteMoves: [String] {
        var result: [String] = []
        // pawn moves
        ["a", "b", "c", "d", "e", "f", "g", "h"].forEach { symbol in
            result.append("\(symbol)\(3)")
            result.append("\(symbol)\(4)")
            result.append("\(symbol)\(5)")
            result.append("\(symbol)\(6)")
        }
        
        result.append("Nf3")
        result.append("Nc3")
        result.append("Nd5")
        
        result.append("Bc4")
        result.append("Bd3")
        result.append("Bb5")
        result.append("Bg2")
        result.append("Bb2")
        
        result.append("Qa4")
        result.append("Qb3")
        result.append("Qc2")
        result.append("Qe2")
        result.append("Qf3")
        result.append("Qg4")
        result.append("Qh5")
        
        
        
        return result
    }
    
    static var blackMoves: [String] {
        var result: [String] = []
        // pawn moves
        ["a", "b", "c", "d", "e", "f", "g", "h"].forEach { symbol in
            result.append("\(symbol)\(3)")
            result.append("\(symbol)\(4)")
            result.append("\(symbol)\(5)")
            result.append("\(symbol)\(6)")
        }
        
        result.append("Nf6")
        result.append("Nc6")
        result.append("Nd5")
        
        result.append("Bc5")
        result.append("Bd6")
        result.append("Bb4")
        result.append("Bg7")
        result.append("Bb7")
        
        result.append("Qa5")
        result.append("Qb6")
        result.append("Qc7")
        result.append("Qe7")
        result.append("Qf6")
        result.append("Qg5")
        result.append("Qh4")
        
        return result
    }
}
