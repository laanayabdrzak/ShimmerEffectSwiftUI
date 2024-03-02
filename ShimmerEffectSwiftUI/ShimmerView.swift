//
//  ShimmerView.swift
//  ShimmerEffectSwiftUI
//
//  Created by LAANAYA Abderrazak on 2/3/2024.
//

import SwiftUI

struct ShimmerView: View {
    
    var width: CGFloat
    var height: CGFloat
    
    @State private var shimmering = false
    
    let streamSnow = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    let streamGray = #colorLiteral(red: 0.5741485357, green: 0.5741624236, blue: 0.574154973, alpha: 1)
    
    init(width: CGFloat = 200,
         height: CGFloat = 40) {
        self.width = width
        self.height = height
    }
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color(streamSnow), Color(streamGray)]),
                       startPoint: .leading,
                       endPoint: shimmering ? .trailing : .leading)
        .frame(width: width, height: height)
        .mask(RoundedRectangle(cornerRadius: 10))
        .animation(.easeOut(duration: 2).repeatForever(autoreverses: false), value: shimmering)
        .onAppear {
            shimmering.toggle()
        }
    }
}
