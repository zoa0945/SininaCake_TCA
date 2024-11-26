//
//  SininaCake_TCAApp.swift
//  SininaCake_TCA
//
//  Created by Nam Hoon Jeong on 11/14/24.
//

import SwiftUI
import ComposableArchitecture

@main
struct SininaCake_TCAApp: App {
    
    let homeStore = Store(initialState: HomeStore.State(), reducer: { HomeStore() })
    
    var body: some Scene {
        WindowGroup {
            HomeView(store: homeStore)
        }
    }
}
