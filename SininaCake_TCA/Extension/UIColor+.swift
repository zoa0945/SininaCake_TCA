//
//  UIColor+.swift
//  SininaCake_TCA
//
//  Created by Nam Hoon Jeong on 11/14/24.
//

import UIKit

extension UIColor {
    
    convenience init(hex: String) {
        var hex = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hex.hasPrefix("#") {
            hex = String(hex.dropFirst())
        }
        
        assert(hex.count == 6, "Invaild hex code used.")
        
        var rgbValue: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&rgbValue)
        
        self.init(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: 1.0
        )
    }
    
    static let SCGray = UIColor(hex: "999999")
    
    static let SCLightGray = UIColor(hex: "DDDDDD")
    
    static let SCDarkGray = UIColor(hex: "707070")
    
    static let SCBlue = UIColor(hex: "72C3DE")
    
    static let SCRed = UIColor(hex: "FF4444")
}
