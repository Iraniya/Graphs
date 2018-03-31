//
//  PushButton.swift
//  SaveWater
//
//  Created by Iraniya Naynesh on 30/03/18.
//  Copyright © 2018 Iraniya Naynesh. All rights reserved.
//

import UIKit

@IBDesignable
class PushButton: UIButton {

    private struct Constants {
        static let plusLineWidth: CGFloat = 3.0
        static let plusButtonScale: CGFloat = 0.6
        static let halfPointShift: CGFloat = 0.5
    }
    
    private var halfWidth: CGFloat {
        return bounds.width / 2
    }
    
    private var halfHeight: CGFloat {
        return bounds.height / 2
    }
    
    @IBInspectable var fillColor: UIColor = UIColor.green
    @IBInspectable var isAddButton: Bool = false
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        let path = UIBezierPath(ovalIn: bounds)
        fillColor.setFill()
        path.fill()
        
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * Constants.plusButtonScale
        
        let halfLineWidth: CGFloat = plusWidth/2
        
        let linePath = UIBezierPath()
        linePath.lineWidth = Constants.plusLineWidth
        linePath.move(to: CGPoint(x: halfWidth - halfLineWidth + Constants.halfPointShift, y: halfHeight + Constants.halfPointShift))
        linePath.addLine(to: CGPoint(x: halfWidth + halfLineWidth + Constants.halfPointShift, y: halfHeight + Constants.halfPointShift))
        
        if isAddButton {
            linePath.move(to: CGPoint(x: halfWidth + Constants.halfPointShift, y: halfHeight - halfLineWidth + Constants.halfPointShift))
            linePath.addLine(to: CGPoint(x: halfWidth + Constants.halfPointShift, y: halfHeight + halfLineWidth + Constants.halfPointShift))
        }
        
        UIColor.white.setStroke()
        linePath.stroke()
    }

}
