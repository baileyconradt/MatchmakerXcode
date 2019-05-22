//
//  HostGameController.swift
//  Matchmaker2.0
//
//  Created by Bailey Conradt on 5/18/19.
//  Copyright © 2019 Bailey Conradt. All rights reserved.
//

import Foundation
import UIKit

class HostGameController: UIViewController {
    
    @IBOutlet weak var GameCodeDisplay: UILabel!
    @IBOutlet weak var GenerateCodeButton: UIButton!
    
    
    var game: newGame?
    
    
    @IBAction func GenerateCode(_ sender: Any) {
        
    let game = newGame()
        
    let gameCode = game.generateGameCode()
        
        GameCodeDisplay.text = String(gameCode)
        
       // print(game.gameCode)
        
        GenerateCodeButton.isEnabled = false
        
    }
    
    
    
     override func viewDidLoad() {
    
        
    }
    
    
    
}
