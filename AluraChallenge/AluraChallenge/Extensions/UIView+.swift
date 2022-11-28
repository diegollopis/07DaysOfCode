//
//  UIView+.swift
//  AluraChallenge
//
//  Created by Diego Llopis on 27/11/22.
//

import Foundation
import UIKit

extension UIView {
    
    func setupGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.topColor, UIColor.bottomColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
