//
//  SuccessView.swift
//  HITFit
//
//  Created by Nick Lilland on 8/25/24.
//

import SwiftUI

struct SuccessView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75, height: 75)
                    .foregroundColor(.purple)
                Text("High Five!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("""
          Good job completing all four exercises!
          Remember tomorrow's another day.
          So eat well and get some rest.
          """)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            }
            VStack {
                Spacer()
                Button("Continue") {
                    dismiss()
                    selectedTab = 9
                }
                .padding()
            }
        }
    }
}

#Preview {
    SuccessView(selectedTab: .constant(3))
}
