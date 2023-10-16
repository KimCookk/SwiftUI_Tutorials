//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 김태성 on 10/14/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
