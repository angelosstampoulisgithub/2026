//
//  ConfettiPiece.swift
//  2026
//
//  Created by Angelos Staboulis on 31/12/25.
//

import SwiftUI


struct ConfettiPiece: View {
    let color: Color

    @State private var xPosition = CGFloat.random(in: 0...UIScreen.main.bounds.width)
    @State private var yPosition = CGFloat.random(in: -200...0)
    @State private var rotation = Double.random(in: 0...360)

    var body: some View {
        Rectangle()
            .fill(color)
            .frame(width: 8, height: 14)
            .rotationEffect(.degrees(rotation))
            .position(x: xPosition, y: yPosition)
            .onAppear {
                withAnimation(
                    .linear(duration: Double.random(in: 3...6))
                        .repeatForever(autoreverses: false)
                ) {
                    yPosition = UIScreen.main.bounds.height + 100
                    rotation += 360
                }
            }
    }
}
