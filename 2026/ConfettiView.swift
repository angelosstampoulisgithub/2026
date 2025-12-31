//
//  ConfettiView.swift
//  2026
//
//  Created by Angelos Staboulis on 31/12/25.
//

import SwiftUI

struct ConfettiView: View {
    let colors: [Color] = [.red, .blue, .green, .yellow, .pink, .purple]
    let confettiCount = 30

    var body: some View {
        ZStack {
            ForEach(0..<confettiCount, id: \.self) { _ in
                ConfettiPiece(color: colors.randomElement()!)
            }
        }
        .ignoresSafeArea()
    }
}
