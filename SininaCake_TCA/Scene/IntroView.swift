//
//  IntroView.swift
//  SininaCake_TCA
//
//  Created by Nam Hoon Jeong on 11/14/24.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        Image("Intro", bundle: nil)
            .resizable()
            .scaledToFit()
            .padding(UIScreen.main.bounds.width / 4)
    }
}

#Preview {
    IntroView()
}
