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
    @IBOutlet weak var NextButton: UIButton!
    
    
    var game: newGame?
    
    //creates a new game with a random code
    @IBAction func GenerateCode(_ sender: Any) {
    
    let game = newGame()
    let gameCode = game.generateGameCode()
    GameCodeDisplay.text = String(gameCode)
    
    GenerateCodeButton.isEnabled = false
    GenerateCodeButton.isHidden = true
    NextButton.isHidden = false
    }
    
    //segue to the enter name controller
    @IBAction func nextButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "segueToPlayerName", sender: self)
        
    }
    
     override func viewDidLoad() {
    NextButton.isHidden = true
    }
    
    
    
}
