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
                ForEach(0..<4) { index in
                    Exercise_View(index: index)}
                Text("Exercise 2")
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    ContentView()
}
