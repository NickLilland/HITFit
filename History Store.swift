//
//  History Store.swift
//  HITFit
//
//  Created by Nick Lilland on 8/25/24.
//

import Foundation

struct ExerciseDay: Identifiable {
    let id = UUID()
    let date: Date
    var exercises: [String] = []
}

struct HistoryStore {
    var exerciseDays: [ExerciseDay] = []
    init() {
        #if DEBUG
        createDevData()
        #endif
    }
}


