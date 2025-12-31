//
//  ContentView.swift
//  2026
//
//  Created by Angelos Staboulis on 31/12/25.
//

import SwiftUI


struct ContentView: View {
    @State private var animateText = false
    @State private var showConfetti = false

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            // Confetti layer
            if showConfetti {
                ConfettiView()
            }

            // Center text
            Text("2026")
                .font(.system(size: 90, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .scaleEffect(animateText ? 1.1 : 0.6)
                .opacity(animateText ? 1 : 0)
                .animation(
                    .easeInOut(duration: 1.2)
                        .repeatForever(autoreverses: true),
                    value: animateText
                )
        }
        .onAppear {
            animateText = true
            showConfetti = true
        }
    }
}
