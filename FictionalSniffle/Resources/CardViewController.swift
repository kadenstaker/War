//
//  CardViewController.swift
//  FictionalSniffle
//
//  Created by Ivan Ramirez on 11/13/18.
//  Copyright © 2018 Kaden Staker. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    
    // MARK: - IBoutlets
    
    @IBOutlet weak var playerOneCardImage: UIImageView!
    @IBOutlet weak var userNameOne: UILabel!
    @IBOutlet weak var userNameTwo: UILabel!
    @IBOutlet weak var playerTwoCardImage: UIImageView!
    
    // MARK: - Instantces
    let backOfCardImage = UIImage(named: "backOfCard")

    
    // MARK: - Life Cyle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Hides the phone's status bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
}


// MARK: - Shake Feature
extension CardViewController {
    

    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            
            playerOneCardImage.spin()
            playerTwoCardImage.spin()
        }
        
        
    }
}

