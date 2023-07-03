//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Eric on 03/07/2023.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle = Int.random(in: 6...12)
    
    // 1. RANDOM COORDINATE
    // 2. RANDOM SIZE
    // 3. RANDOM SCALE
    // 4. RANDOM SPEED
    // 5. RANDOM DELAY
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
            }
        }
        .frame(width: 256, height: 256)
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.teal.ignoresSafeArea()
            MotionAnimationView()
        }
    }
}
