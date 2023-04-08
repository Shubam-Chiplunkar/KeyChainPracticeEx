//
//  ViewController.swift
//  KeyChainPracticeEx
//
//  Created by mayank ranka on 08/04/23.
//

import UIKit
import KeychainAccess
class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let keychain = Keychain(service: "nimapinfotech.KeyChainPracticeEx")
        self.lbl.text = keychain["HighScore"]
    }

    @IBAction func saveButton(_ sender: Any) {
        
        self.lbl.text = "High Score is - 200"
        let highScore = self.lbl.text
        
        let keychain = Keychain(service: "nimapinfotech.KeyChainPracticeEx")
        keychain["HighScore"] = highScore
    }
    
}

