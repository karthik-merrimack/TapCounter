//
//  ContentView.swift
//  TapCounter
//
//  Created by Karthik Thirugnanasampantham on 4/30/25.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0

    private var currentDateString: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .full       // e.g. “Wednesday, April 30, 2025”
        formatter.timeStyle = .none
        return formatter.string(from: Date())
    }

    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()

            VStack(spacing: 30) {
                Text("You've tapped \(tapCount) time\(tapCount == 1 ? "" : "s")")
                    .font(.title2)
                    .foregroundColor(.white)

                Button("Tap Me!") {
                    tapCount += 1
                }
                .font(.headline)
                .padding(.horizontal, 20)
                .padding(.vertical, 12)
                .background(Color.white.opacity(0.2))
                .foregroundColor(.white)
                .cornerRadius(8)

                Text("Welcome to the Tap Counter App!")
                    .font(.headline)
                    .foregroundColor(.white)

                Text("Today is \(currentDateString)")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.9))

                Button("Close App") {
                    exit(0)
                }
                .font(.subheadline)
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(Color.white.opacity(0.2))
                .foregroundColor(.white)
                .cornerRadius(8)
                .padding(.top, 20)
            }
            .padding()
        }
    }
}

