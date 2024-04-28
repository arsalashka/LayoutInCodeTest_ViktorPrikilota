//
//  UIColorExtension.swift
//  LayoutInCodeTest_ViktorPrikilota
//
//  Created by Arsalan on 27.04.2024.
//

import UIKit

//  UIColor extension for using hex code of color 'view.backgroundColor = UIColor(rgb: 0xFFFFFF)'

extension UIColor {
    struct CustomColors {
        static var labelTextColor: UIColor { return UIColor(rgb: 0x505050) }
        static var buttonBackgroundColor: UIColor { return UIColor(rgb: 0x7795FF) }
        static var placeHolderTextColor: UIColor { return UIColor(rgb: 0x838383) }
        static var lineViewBackgroundColor: UIColor { return UIColor(rgb: 0xDDDDDD) }
    }
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
