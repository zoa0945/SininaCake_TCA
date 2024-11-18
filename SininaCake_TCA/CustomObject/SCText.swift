//
//  SCText.swift
//  SininaCake_TCA
//
//  Created by Nam Hoon Jeong on 11/18/24.
//

import SwiftUI

struct SCText: View {
    
    let title: String
    let textColor: UIColor
    let textWeight: Font.Weight
    let textSize: CGFloat
    
    init(title: String, textColor: UIColor, textWeight: Font.Weight, textSize: CGFloat) {
        self.title = title
        self.textColor = textColor
        self.textWeight = textWeight
        self.textSize = textSize
    }
    
    var body: some View {
        Text(title)
            .font(.custom("Pretendard", fixedSize: textSize))
            .fontWeight(textWeight)
            .foregroundStyle(Color(textColor))
    }
}

#Preview {
    SCText(title: "테스트 메세지", textColor: .SCBlue, textWeight: .bold, textSize: 24)
}
