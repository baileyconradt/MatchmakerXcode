//
//  NewGame.swift
//  Matchmaker2.0
//
//  Created by Bailey Conradt on 5/18/19.
//  Copyright © 2019 Bailey Conradt. All rights reserved.
//

import Foundation

class newGame {
    var gameCode: Int
    var players: [Player]
    var questions: [String]
    var answers: [[String]]
    
    init() {
gameCode = 3549
players = [Player]()
questions = [String]()
answers = [[String]]()
    }

    func generateGameCode() -> Int {
    gameCode = Int.random(in: 0 ... 9999)
    return gameCode
    }

    
}
