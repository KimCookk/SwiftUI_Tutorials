//
//  ContentView.swift
//  Landmarks
//
//  Created by 김태성 on 10/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
                
            VStack(alignment: .leading){
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}

// Preview Canvas 좌측 하단 두번째 옵션을 통해 Select Mode 사용 가능

// * Select Mode
// 해당 모드에서는 캔버스 Select를 통해 코드에 어느 부분에 해당하는지 확인 할 수 있음
// ctrl + cmd + 클릭시 + show 인스펙터를 통해 UI 속성을 변경 할 수 있음