//
//  HistoryView.swift
//  HITFit
//
//  Created by Nick Lilland on 8/25/24.
//

import SwiftUI

struct HistoryView: View {
    @EnvironmentObject var history: HistoryStore
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
        .environmentObject(HistoryStore())
}
