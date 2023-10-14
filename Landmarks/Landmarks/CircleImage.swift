//
//  CircleImage.swift
//  Landmarks
//
//  Created by 김태성 on 10/14/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            
    }
}

#Preview {
    CircleImage()
}