//
//  ExtensionShake.swift
//  FictionalSniffle
//
//  Created by Ivan Ramirez on 11/13/18.
//  Copyright © 2018 Kaden Staker. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func spin() {
        let rotation: CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotation.toValue = Double.pi * 2
        rotation.duration = 0.25 // or however long you want ...
        rotation.isCumulative = true
        rotation.repeatCount = Float.greatestFiniteMagnitude
        DispatchQueue.main.async {
            self.layer.add(rotation, forKey: "rotationAnimation")
        }
    }
}
