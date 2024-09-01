//
//  HITFitApp.swift
//  HITFit
//
//  Created by Nick Lilland on 8/21/24.
//

import SwiftUI

@main
struct HITFitApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    print(URL.documentsDirectory)
                }
        }
    }
}
