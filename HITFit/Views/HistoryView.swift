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

struct HistoryView: View {
    let history = HistoryStore()
    @Binding var showHistory: Bool
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {
                dismiss()
            }) {
                Image(systemName: "xmark.circle")
                    .font(.title)
                    .padding()
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
    HistoryView(showHistory: .constant(true))
}
