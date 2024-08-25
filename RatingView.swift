//
//  RatingView.swift
//  HITFit
//
//  Created by Nick Lilland on 8/24/24.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { _ in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(.gray)
            }
        }
        .font(.largeTitle)
    }
}

#Preview {
    RatingView()
        .previewLayout(.sizeThatFits)
}

