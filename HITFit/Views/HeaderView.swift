//
//  HeaderView.swift
//  HITFit
//
//  Created by Nick Lilland on 8/24/24.
//

import SwiftUI

struct HeaderView: View {

    @Binding var selectedTab: Int
    
    let titleText: String

    var body: some View {
        VStack {
            Text(titleText)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
            HStack {
                ForEach(Exercise.exercises.indices, id: \.self) { index in
                    ZStack {
                        Circle()
                            .frame(width: 32, height: 32)
                            .foregroundColor(.white)
                            .opacity(index == selectedTab ? 0.5 : 0.0)
                        Circle()
                            .frame(width: 16, height: 16)
                            .foregroundColor(.white)
                    }
                    .onTapGesture {
                        selectedTab = index
                    }
                }
            }
            .font(.title2)
        }
    }
}


#Preview {
    HeaderView(selectedTab: .constant(0), titleText: "Squat")
        .previewLayout(.sizeThatFits)
}

