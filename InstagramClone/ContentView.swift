//
//  ContentView.swift
//  InstagramClone
//
//  Created by Prajwal U on 15/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TabView {
                HomeView()
                    .tabItem {
                            Image("Homeicon1")
                    }
                Text("Home")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                Text("Home")
                    .tabItem {
                        Image("ReelsIcon")
                    }
                Text("Home")
                    .tabItem {
                        Image("ShoppingIcon")
                    }
                AccountView()
                    .tabItem {
                        Image("accounticon")
                    }
            }.accentColor(.black)
        }
    }
}

#Preview {
    ContentView()
}
