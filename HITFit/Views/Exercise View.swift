//
//  Exercise View.swift
//  HITFit
//
//  Created by Nick Lilland on 8/24/24.
//

import SwiftUI
import AVKit

struct Exercise_View: View {

    @Binding var selectedTab: Int

    @State private var rating = 0

    //declared "index" is an integer
    let index: Int
    let interval: TimeInterval = 30

    var exercise: Exercise {
        Exercise.exercises[index]
    }
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    var startButton: some View {
        Button("Start Exercise") {}
    }
    var doneButton: some View {
        Button("Done") {
            selectedTab = lastExercise ? 9 : selectedTab + 1
        }
    }

    var body: some View {
        //changed view text to be the exercise names at index
        GeometryReader { geometry in
            VStack {
                HeaderView(selectedTab: $selectedTab, titleText: Exercise.exercises[index].exerciseName)
                    .padding(.bottom)
                VideoPlayerView(videoName: exercise.videoName)
                  .frame(height: geometry.size.height * 0.45)
                Text(Date().addingTimeInterval(interval), style: .timer)
                    .font(.system(size: geometry.size.height * 0.07))
                HStack(spacing: 150) {
                    startButton
                    doneButton
                }
                .font(.title3)
                .padding()
                RatingView(rating: $rating)
                    .padding()
                Spacer()
                Button("History") {}
                    .padding(.bottom)
            }
        }
    }
}

#Preview {
    Exercise_View(selectedTab: .constant(1), index: 1)
}

