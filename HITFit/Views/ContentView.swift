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
                //i fixed it, I was dumb
                ForEach(Exercise.exercises.indices, id: \.self) { index in
                    Exercise_View(index: index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    ContentView()
}
