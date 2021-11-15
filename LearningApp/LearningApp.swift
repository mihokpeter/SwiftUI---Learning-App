//
//  LearningApp.swift
//  LearningApp
//
//  Created by Peter Mihók on 15/11/2021.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
