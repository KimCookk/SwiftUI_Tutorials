//
//  RotatedBageSymbol.swift
//  Landmarks
//
//  Created by 김태성 on 10/17/23.
//

import SwiftUI

struct RotatedBageSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBageSymbol(angle: Angle(degrees: 5))
}
