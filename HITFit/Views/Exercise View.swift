//
//  Exercise View.swift
//  HITFit
//
//  Created by Nick Lilland on 8/24/24.
//

import SwiftUI

struct Exercise_View: View {
    //assigning video names in an array
    let videoNames = ["squat", "step-up", "burpee", "sun-salute"]
    //assigning exercise names in an array
    let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    //declared "index" is an integer
    let index: Int

    var body: some View {
        //changed view text to be the exercise names at index
        Text(exerciseNames[index])
    }
}

#Preview {
    Exercise_View(index: 0)
}
