//
//  TestOpenings.swift
//  ChessTrainer2
//
//  Created by Ladolado3911 on 5/27/21.
//

import Foundation
import UIKit

enum Colour {
    case white
    case black
}

struct Opening {

    var jsonOpening: JsonOpening
    var name: String {
        jsonOpening.name ?? ""
    }
    var moveSequence: [String] {
        get {
            (jsonOpening.moves ?? "").moves
        }
    }
    
    var newMoveSequence: [String] = []
    var newMovesCount: Int {
        return newMoveSequence.count
    }
    
    var movesCount: Int {
        return moveSequence.count
    }

    init(with opening: JsonOpening) {
        jsonOpening = opening
    }

    func generate6ChoiceFor(correctMove move: String, move color: Colour) -> [String] {
        var temp: [String] = []
        switch color {
        case .white:
            temp = Moves.whiteMoves
        case .black:
            temp = Moves.blackMoves
        }
        var moves2: [String] = []
        if temp.contains(move) {
            temp = temp.filter { $0 != move }
        }
        for _ in 0..<5 {
            moves2.append(temp.randomElement()!)
        }
        moves2.append(move)
        return moves2.shuffled()
    }
    
    mutating func setMoveSequence(newSequence sequence: [String]) {
        newMoveSequence = sequence
    }
}
