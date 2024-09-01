//
//  ContentView.swift
//  HITFit
//
//  Created by Nick Lilland on 8/21/24.
//

import SwiftUI

struct ContentView: View {

    @State private var history = HistoryStore()
    @State private var selectedTab = 9

    var body: some View {
        TabView(selection: $selectedTab) {
            WelcomeView(history: history,selectedTab: $selectedTab)
                .tag(9)
            ForEach(Exercise.exercises.indices, id: \.self) { index in
                Exercise_View(selectedTab: $selectedTab, history: $history, index: index)
                    .tag(index)
            }

        }
        .environmentObject(HistoryStore())
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    ContentView()
}
