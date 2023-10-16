//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 김태성 on 10/15/23.
//

import SwiftUI

// State는 변경 될 수 있고 뷰의 동작, 콘텐츠 또는 레이아웃에 영향을 미치는 값또는 집합이다.
// 속성 또는 State 앞에 prefix "$"를 추가하여 값을 바인딩 할 수 있다.
struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("Landmarks")
            }
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
