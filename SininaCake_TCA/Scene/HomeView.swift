//
//  HomeView.swift
//  SininaCake_TCA
//
//  Created by Nam Hoon Jeong on 11/14/24.
//

import SwiftUI
import ComposableArchitecture

struct HomeView: View {
    
    let store: StoreOf<HomeStore>
    
    var body: some View {
        // TODO: - [ O ] WithViewStore에서 observe 파라미터의 의미는?
        // Answer - 해당 구조체(HomeView)에서 관찰할 대상을 지정
        //        - 보통 store에 정의 된 state 전체이기 때문에 { $0 } 으로 표현
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            if viewStore.isLoading {
                // TODO: - [ ] 로그인 확인 후 상태 변경
                IntroView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                            viewStore.send(.introViewDidAppear)
                        }
                    }
            }
        }
    }
}

#Preview {
    HomeView(store: Store(initialState: HomeStore.State(), reducer: { HomeStore() }))
}
