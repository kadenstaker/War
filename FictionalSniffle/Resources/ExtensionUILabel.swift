//
//  ExtensionUILabel.swift
//  FictionalSniffle
//
//  Created by Ivan Ramirez on 11/13/18.
//  Copyright © 2018 Kaden Staker. All rights reserved.
//


import UIKit

extension UILabel {
    @IBInspectable
    var rotation: Int {
        get {
            return 0
        } set {
            let radians = CGFloat(CGFloat(Double.pi) * CGFloat(newValue) / CGFloat(180.0))
            self.transform = CGAffineTransform(rotationAngle: radians)
        }
    }
}
