//
//  UIFont+.swift
//  SininaCake_TCA
//
//  Created by Nam Hoon Jeong on 11/18/24.
//

import UIKit

extension UIFont {
    static func pretendard(size: CGFloat, weight: UIFont.Weight) -> UIFont {
        let familyName = "Pretendard"
        
        var weightString: String
        switch weight {
        case .light:
            weightString = "Light"
        case .medium:
            weightString = "Medium"
        case .semibold:
            weightString = "SemiBold"
        case .bold:
            weightString = "Bold"
        case .heavy:
            weightString = "Heavy"
        case .black:
            weightString = "Black"
        case .regular:
            weightString = "Regular"
        default:
            weightString = "Regular"
        }
        
        return UIFont(name: "\(familyName)-\(weightString)", size: size) ?? .systemFont(ofSize: size, weight: weight)
    }
}
