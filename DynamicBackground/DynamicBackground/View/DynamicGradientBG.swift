//
//  DynamicGradientBG.swift
//  DynamicBackground
//
//  Created by Kainoa Palama on 12/11/20.
//

import Foundation
import UIKit

protocol DynamicGradientBG: UIViewController {
    func setupGradientLayer()
    func animateGradientLayer()
}

extension DynamicGradientBG {
    func setupGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor(red: 43, green: 49, blue: 96, alpha: 100), UIColor.orange.cgColor, UIColor.red.cgColor, UIColor(red: 43, green: 49, blue: 96, alpha: 100).cgColor]
        gradient.locations = [0.0, 0.005, 0.06, 0.24]
        gradient.startPoint = CGPoint(x: 0, y: 1.0)
        gradient.endPoint = CGPoint(x: 0, y: 0)
        gradient.frame = CGRect(x: 0.0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.layer.insertSublayer(gradient, at: 0)
    }
    
    func animateGradientLayer() {
        
    }
    
//    var solarColors1 = [CGColor(red: 43, green: 49, blue: 96, alpha: 100), CGColor(red: 55, green: 61, blue: 110, alpha: 100), CGColor(red: 95, green: 95, blue: 138, alpha: 100), CGColor(red: 255, green: 166, blue: 47, alpha: 100)]
}

//
//    gradient.locations = [0.0, 0.252, 0.573, 1.0]


