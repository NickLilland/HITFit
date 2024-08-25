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

                //this made it so i couldn't scroll. I don't know why
//                ForEach(Exercise.exercises.indices, id: \.self) { index in
//                }
                //this lets me scroll fine. Needs to be debugged
                ForEach(0 ..< 4) { index in
                  Exercise_View(index: index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    ContentView()
}
