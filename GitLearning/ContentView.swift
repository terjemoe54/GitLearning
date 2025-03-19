//
//  ContentView.swift
//  GitLearning
//
//  Created by Terje Moe on 19/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    DetailView()
                } label: {
                    Text("Git Learning App")
                }
            }
            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
