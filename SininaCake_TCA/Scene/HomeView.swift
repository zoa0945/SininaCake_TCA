//
//  HomeView.swift
//  SininaCake_TCA
//
//  Created by Nam Hoon Jeong on 11/14/24.
//

import SwiftUI

struct HomeView: View {
    
    @State var isLaunching: Bool = true
    
    var body: some View {
        if isLaunching {
            IntroView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        isLaunching = false
                    }
                }
        } else {
            Text("HomeView!!")
        }
    }
}

#Preview {
    HomeView()
}
