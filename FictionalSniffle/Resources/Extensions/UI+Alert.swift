//
//  UI+Alert.swift
//  FictionalSniffle
//
//  Created by Ivan Ramirez on 11/13/18.
//  Copyright © 2018 Kaden Staker. All rights reserved.
//

import Foundation

import UIKit

extension UIViewController {
    
    func presentAlertControllerWith(title: String, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okOptionAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        
        let networkError = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        networkError.image = UIImage(named:"netWorkErrorSimpsons")
        
        alertController.view.addSubview(networkError)
        
        alertController.addAction(okOptionAction)
        
        self.present(alertController, animated:  true, completion: nil)
    }
}
//    func presentAlertControllerWith(title: String, message: String) {
//        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let okOptionAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//        alertController.addAction(okOptionAction)
//        self.present(alertController, animated:  true)

// MARK: -  Dont Delet this commented out Code out, it too me forever to figure it out. perhaps it can be used else where

//    func presentRotatedUIAlertWith() {
//        let alert = UIAlertController(title: "Erro Fetching Card Image", message: "🙏🏽Please dont give us a bad review on the App Store🙏🏽", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "Okay", style: .default){(action)->() in })
//
//        self.present(alert, animated: true, completion: {() -> Void in
//
//            let radians = CGFloat(CGFloat(Double.pi) * CGFloat(180) / CGFloat(180.0))
//
//            alert.view.transform = CGAffineTransform(rotationAngle: CGFloat(Float(radians)))
//        })
//    }
//    }
//}



