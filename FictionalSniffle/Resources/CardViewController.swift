//
//  CardViewController.swift
//  FictionalSniffle
//
//  Created by Ivan Ramirez on 11/13/18.
//  Copyright © 2018 Kaden Staker. All rights reserved.
//

import UIKit
import AVFoundation

class CardViewController: UIViewController {
    
    // MARK: - IBoutlets
    
    @IBOutlet weak var playerOneCardImage: UIImageView!
    @IBOutlet weak var userNameOne: UILabel!
    @IBOutlet weak var userNameTwo: UILabel!
    @IBOutlet weak var playerTwoCardImage: UIImageView!
    
    // MARK: - Instantces
    let backOfCardImage = UIImage(named: "backOfCard")
    
    // Not sure if this is needed
    var cards: [Card] = []
    
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
    
    
    // MARK: - Shake to make the fetch calls
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            startAnimatingCard()
            AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
            
            // Fetch the cards
            CardController.shared.getCards(amount: 2) { (cards) in
                //           self.cards = cards
                //                if cards.count > 0 {
                // Fetch the cards images
                CardController.shared.getImagesFor(card: cards[0], completion: { (playerOneCardImage) in
                    CardController.shared.getImagesFor(card: cards[1], completion: { (playerTwoCardImage) in
                        DispatchQueue.main.async {
                            self.playerOneCardImage.image = playerOneCardImage
                            self.playerTwoCardImage.image = playerTwoCardImage
                        }
                    })
                    // Player TWO Won
                    if cards[0].value > cards[1].value {
                        
                        DispatchQueue.main.async {
                            self.userTwoWon()
                            self.stopAnimatingCard()
                            
                        }
                    } else {
                        // Player ONE Won
                        DispatchQueue.main.async {
                            self.userOneWon()
                            self.stopAnimatingCard()
                            
                        }
                    }
                })
            }
//        } else  {
//            DispatchQueue.main.async {
//                self.stopAnimatingCard()
//                self.presentAlertControllerWith(title: "error", message: "error")
//            }
      }
    }
}

extension CardViewController {
    func startAnimatingCard() {
        playerOneCardImage.spin()
        playerTwoCardImage.spin()
    }
    func stopAnimatingCard() {
        playerTwoCardImage.stopRotating()
        playerOneCardImage.stopRotating()
    }
}


