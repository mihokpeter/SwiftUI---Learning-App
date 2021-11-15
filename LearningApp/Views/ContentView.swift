//
//  ContentView.swift
//  LearningApp
//
//  Created by Peter Mihók on 15/11/2021.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        ScrollView {
            LazyVStack {
                
                // Confirm that currenModule is set
                if model.currentModule != nil {
                    ForEach(0..<model.currentModule!.content.lessons.count) { index in
                        
                        ContentViewRow(index: index)
                        
                    }
                }
            }
            .padding()
            .navigationTitle("Learn \(model.currentModule?.category ?? "")")
        }
        
    }
}
