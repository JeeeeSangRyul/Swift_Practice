//
//  CALayer+Ext.swift
//  autoLayout_Practice
//
//  Created by 지상률 on 2023/04/19.
//

import Foundation
import UIKit

extension CALayer{
    func applyShadow(
        color: UIColor = .black,
        alpha: Float = 0.25,
        x: CGFloat = 0,
        y: CGFloat = 4,
        blur: CGFloat = 10,
        spread: CGFloat = 0)
    {
        masksToBounds = false
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 2.0
        if spread == 0 {
            shadowPath = nil
        }else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
}
