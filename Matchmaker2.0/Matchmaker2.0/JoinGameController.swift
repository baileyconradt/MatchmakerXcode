//
//  JoinGameController.swift
//  Matchmaker2.0
//
//  Created by Bailey Conradt on 3/31/19.
//  Copyright © 2019 Bailey Conradt. All rights reserved.
//

import Foundation
import UIKit

class JoinGameController: UIViewController {

    @IBOutlet weak var EnteredGameCode: UITextField!
    @IBOutlet weak var WrongCodeLabel: UILabel!
    @IBOutlet weak var NextButton: UIButton!
    
    let GameCode = 3549
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EnteredGameCode.delegate = self
        WrongCodeLabel.text = ""
    }
    //check if the game code is valid, if not, print an error
    @IBAction func NextPressed(_ sender: Any) {
        if EnteredGameCode.text == String(GameCode) {
            let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "EnterPlayerNameController") as! EnterPlayerNameController
            self.present(nextViewController, animated: true, completion: nil)
            
        }
        else {
            WrongCodeLabel.text = "Please Enter a Valid Code."
        }
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        EnteredGameCode.resignFirstResponder()
    }




}

extension JoinGameController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
}
}
