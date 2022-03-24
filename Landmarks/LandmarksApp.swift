//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 최영재 on 2022/03/16.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
