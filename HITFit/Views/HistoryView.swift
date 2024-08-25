//
//  HistoryView.swift
//  HITFit
//
//  Created by Nick Lilland on 8/25/24.
//

import SwiftUI

let today = Date()
let yesterday = Date().addingTimeInterval(-86400)

let exercise1 = ["Squat", "Step Up", "Burpee", "Sun Salute"]
let exercise2 = ["Squat", "Step Up", "Burpee"]

struct HistoryView: View {
    var body: some View {
        VStack {
            Text("History")
                .font(.title)
                .padding()
            Form {
                Section(
                    header:
                        Text(today.formatted(as: "MMM d"))
                        .font(.headline)) {
                            ForEach(exercise1, id: \.self) {exercise in
                                Text(exercise)
                            }
                        }
                Section(
                    header:
                        Text(yesterday.formatted(as: "MMM d"))
                        .font(.headline)) {
                            ForEach(exercise2, id: \.self) { exercise in
                                Text(exercise)
                            }
                        }
            }
        }
    }
}

#Preview {
    HistoryView()
}
