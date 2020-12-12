//
//  DBGTestViewController.swift
//  DynamicBackground
//
//  Created by Kainoa Palama on 12/11/20.
//

import UIKit

class DBGTestViewController: UIViewController, DynamicGradientBG{

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientLayer()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        animateGradientLayer()
    }


}
