//
//  HistoryStoreDevData.swift
//  HITFit
//
//  Created by Nick Lilland on 8/25/24.
//

import Foundation

extension HistoryStore {
    func createDevData() {
        //development data
        exerciseDays = [
            ExerciseDay(
                date: Date().addingTimeInterval(-86400),
                exercises: [
                    Exercise.exercises[0].exerciseName,
                    Exercise.exercises[1].exerciseName,
                    Exercise.exercises[2].exerciseName
                ]),
            ExerciseDay(
                date: Date().addingTimeInterval(-86400 * 2),
                exercises: [
                    Exercise.exercises[1].exerciseName,
                    Exercise.exercises[0].exerciseName
                ])
        ]
    }
}
