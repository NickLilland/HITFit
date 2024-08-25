//
//  HistoryView.swift
//  HITFit
//
//  Created by Nick Lilland on 8/25/24.
//

import SwiftUI

//let today = Date()
//let yesterday = Date().addingTimeInterval(-86400)
//
//let exercise1 = ["Squat", "Step Up", "Burpee", "Sun Salute"]
//let exercise2 = ["Squat", "Step Up", "Burpee"]

let history = HistoryStore()

struct HistoryView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {}) {
                Image(systemName: "xmark.circle")
                    .font(.title)
                    .padding(.trailing)
            }
            VStack {
                Text("History")
                    .font(.title)
                    .padding()
                Form {
                    ForEach(history.exerciseDays) { day in
                        Section(
                            header:
                                Text(day.date.formatted(as: "MMM dd"))
                                .font(.headline)) {
                                    ForEach(day.exercises, id: \.self) { exercise in
                                        Text(exercise)
                                    }
                                }
                    }
                }
            }
        }
    }
}

#Preview {
    HistoryView()
}
