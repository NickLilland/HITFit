//
//  Welcome View.swift
//  HITFit
//
//  Created by Nick Lilland on 8/24/24.
//

import SwiftUI

struct WelcomeView: View {

    @Binding var selectedTab: Int

    var body: some View {
        ZStack {
            VStack {
                HeaderView(titleText: "Welcome")
                Spacer()
                Button("History") {}
                    .padding(.bottom)
            }
            VStack {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("Get fit")
                            .font(.largeTitle)
                        Text("with high intensity interval training")
                            .font(.headline)
                    }
                    Image("step-up")
                        .resizedToFill(width: 240, height: 240)
                        .clipShape(Circle())
                }
                Button(action: { selectedTab = 0 }) {
                    //                    Text("Get Started")
                    //                    Image(systemName: "arrow.right.circle")
                    Label("Get Started", systemImage: "arrow.right.circle")
                }
                .font(.title2)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 2))
            }
        }
    }
}

#Preview {
    WelcomeView(selectedTab: .constant(9))
}
