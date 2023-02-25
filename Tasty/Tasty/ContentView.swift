//
//  ContentView.swift
//  Tasty
//
//  Created by Jean francois dagnogo on 17/02/2023.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.red
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
        
    }
    @State private var selection: Tab = .list
    
    enum Tab {
        case liked
        case list
    }
    
    fileprivate func extractedFunc() -> ListPage {
        return ListPage(
            viewModel: ListViewModel(
                getRecipesInterator: GetRecipesInteratorImpl(apiService: TastyApiService(urlSession: URLSession.shared))
            )
        )
    }
    
    var body: some View {
        TabView(selection: $selection) {
            
            extractedFunc()
                .tabItem {Label("List", systemImage: "house")}
                .tag(Tab.list)
            
            LikedUIView()
                .tabItem {Label("Liked", systemImage: "star.fill")}
                .tag(Tab.liked)
        }.accentColor(.black)
    }
}

func setupAppearance() {
    UIPageControl.appearance().backgroundColor = .systemBlue
    UIPageControl.appearance().currentPageIndicatorTintColor = .black
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
