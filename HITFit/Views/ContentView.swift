//
//  ContentView.swift
//  HITFit
//
//  Created by Nick Lilland on 8/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView{
                Welcome_View() //was Text("Welcome")
                ForEach (Exercise.exercises.indices, id: \.self) { index in
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    ContentView()
}
