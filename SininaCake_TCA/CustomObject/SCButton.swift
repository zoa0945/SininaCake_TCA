//
//  SCButton.swift
//  SininaCake_TCA
//
//  Created by Nam Hoon Jeong on 11/18/24.
//

import SwiftUI

struct SCButton: View {
    
    let action: () -> Void
    let title: String
    let textColor: UIColor
    let backgroundColor: UIColor
    
    init(action: @escaping () -> Void, title: String, textColor: UIColor, backgroundColor: UIColor) {
        self.action = action
        self.title = title
        self.textColor = textColor
        self.backgroundColor = backgroundColor
    }
    
    var body: some View {
        Button(action: action) {
            Spacer()
            SCText(title: title, textColor: textColor, textWeight: .regular, textSize: 18)
                .frame(minHeight: 55)
            Spacer()
        }
        .background(Color(backgroundColor))
        .cornerRadius(27.5)
    }
}

#Preview {
    SCButton(action: {}, title: "테스트 버튼", textColor: .white, backgroundColor: .SCBlue)
}
