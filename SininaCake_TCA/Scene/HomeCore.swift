//
//  HomeCore.swift
//  SininaCake_TCA
//
//  Created by Nam Hoon Jeong on 11/26/24.
//

import Foundation
import ComposableArchitecture

struct HomeStore: Reducer {
    
    struct State: Equatable {
        var isLoading: Bool = true
    }

    enum Action {
        case introViewDidAppear
    }

    struct Environment {
        
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .introViewDidAppear:
                state.isLoading = false
                return .none
            }
        }
    }
}
