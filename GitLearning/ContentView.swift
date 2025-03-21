//
//  ContentView.swift
//  GitLearning
//
//  Created by Terje Moe on 19/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var showSheet = false
    @State var showNavigation = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button {
                    showNavigation = true
                } label: {
                    Text("Git Learning App")
                }
                
                Button {
                    showSheet = true
                } label: {
                    Text("Show Details")
                }
            }
            .padding()
            .sheet(isPresented: $showSheet) {
                DetailView()
            }
            .navigationDestination(isPresented: $showNavigation) {
                DetailView()
            }
        }
    }
}

#Preview {
    ContentView()
}
