//
//  Exercise View.swift
//  HITFit
//
//  Created by Nick Lilland on 8/24/24.
//

import SwiftUI

struct Exercise_View: View {
    //declared "index" is an integer
    let index: Int

    var exercise: Exercise {
        Exercise.exercises[index]
    }

    var body: some View {
        //changed view text to be the exercise names at index
        VStack {
            HeaderView(exerciseName: exercise.exerciseName)
        }
        Text("Video Player")
        Text("Timer")
        Text("Start/Done Button")
        Text("Rating")
        Text("History button")
    }
}

#Preview {
    Exercise_View(index: 0)
}

