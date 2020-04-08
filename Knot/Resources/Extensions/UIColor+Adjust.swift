//
//  UIColor+Adjust.swift
//  Knot
//
//  Created by Jessica Huynh on 2020-04-08.
//  Copyright © 2020 Jessica Huynh. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    func lighten(by percentage: CGFloat = 30.0) -> UIColor {
         return self.adjust(by: abs(percentage) )
     }

     func darken(by percentage: CGFloat = 30.0) -> UIColor {
         return self.adjust(by: -1 * abs(percentage) )
     }

     func adjust(by percentage: CGFloat = 30.0) -> UIColor {
         var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
         if self.getRed(&red, green: &green, blue: &blue, alpha: &alpha) {
             return UIColor(red: min(red + percentage/100, 1.0),
                            green: min(green + percentage/100, 1.0),
                            blue: min(blue + percentage/100, 1.0),
                            alpha: alpha)
         } else {
             return self
         }
     }
}
