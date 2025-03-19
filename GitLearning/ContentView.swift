//
//  ContentView.swift
//  GitLearning
//
//  Created by Terje Moe on 19/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var showSheet = false
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    DetailView()
                } label: {
                    Text("Git Learning App")
                }
                Button {
                    showSheet = true
                } label: {
                     Text("Show More")
                }
        }
            .padding()
            .sheet(isPresented: $showSheet) {
                DetailView()
            }
        }
    }
}

#Preview {
    ContentView()
}
