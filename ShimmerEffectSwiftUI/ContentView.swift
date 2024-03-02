//
//  ContentView.swift
//  ShimmerEffectSwiftUI
//
//  Created by LAANAYA Abderrazak on 2/3/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ShimmerView(width: 80, height: 80)
            VStack {
                ShimmerView(height: 20)
                ShimmerView(height: 20)
                ShimmerView(height: 20)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
