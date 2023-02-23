//
//  ContentView.swift
//  Tasty
//
//  Created by Jean francois dagnogo on 17/02/2023.
//

import SwiftUI


struct ContentView: View {
    @State private var selection: Tab = .list
    
    enum Tab {
        case liked
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            
            ListPage(viewModel: ListViewModel())
                .tabItem {Label("List", systemImage: "house")}
                .tag(Tab.list)
            
            LikedUIView()
                .tabItem {Label("Liked", systemImage: "star.fill")}
                .tag(Tab.liked)
        }
    }
}

func setupAppearance() {
    UIPageControl.appearance().backgroundColor = .blue
    UIPageControl.appearance().currentPageIndicatorTintColor = .black
    UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
 }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
