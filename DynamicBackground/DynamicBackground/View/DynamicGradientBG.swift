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
        gradient.colors = [UIColor.systemPink.cgColor, UIColor.orange.cgColor, UIColor.red.cgColor, UIColor.purple.cgColor, UIColor.black.cgColor]
        gradient.locations = [0.0, 0.005, 0.06, 0.24, 0.88]
        gradient.startPoint = CGPoint(x: 0, y: 1.0)
        gradient.endPoint = CGPoint(x: 0, y: 0)
        gradient.frame = CGRect(x: 0.0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.layer.insertSublayer(gradient, at: 0)
    }
    
    func animateGradientLayer() {
        
    }
}
