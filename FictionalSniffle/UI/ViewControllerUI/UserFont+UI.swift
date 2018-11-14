//
//  UserFont+UI.swift
//  FictionalSniffle
//
//  Created by Ivan Ramirez on 11/14/18.
//  Copyright © 2018 Kaden Staker. All rights reserved.
//

import UIKit

// MARK: - UI + Who Won the game
extension CardViewController{
    
    func userOneWon() {
        self.userNameOne.text = "You Won"
        self.userNameTwo.text = "You Lost"
        UserOneWonUI()
    }
    
    func userTwoWon(){
        self.userNameOne.text = "You Lost"
        self.userNameTwo.text = "You Won"
        UserTWOWonUI()
    }
    
    // MARK: - Font and Color for User Labels
    
    // User One Won
    func UserOneWonUI(){
        self.userNameOne.textColor = UIColor(displayP3Red: 0, green: 0.7882, blue: 0.3255, alpha: 1.0)
        self.userNameOne.font = UIFont(name: "PingFangSC-Medium ", size: 14)
        
        //
        self.userNameTwo.textColor = UIColor(displayP3Red: 0.9686, green: 0.3059, blue: 0, alpha: 1.0)
        self.userNameTwo.font = UIFont(name: "PingFangSC-Regular", size: 14)
    }
    
    // User Two Won
    func UserTWOWonUI(){
        self.userNameTwo.textColor = UIColor(displayP3Red: 0, green: 0.7882, blue: 0.3255, alpha: 1.0)
        self.userNameTwo.font = UIFont(name: "PingFangSC-Medium ", size: 14)
        
        //
        self.userNameOne.textColor = UIColor(displayP3Red: 0.9686, green: 0.3059, blue: 0, alpha: 1.0)
        self.userNameOne.font = UIFont(name: "PingFangSC-Regular", size: 14)
    }
    
}
