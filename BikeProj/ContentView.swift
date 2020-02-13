//
//  ContentView.swift
//  BikeProj
//
//  Created by Sam Perry on 07/02/2020.
//  Copyright © 2020 Sam Perry. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.darkGray
    }
    
    @State var selected = 0
    @State var showSplash = true

    var body: some View {
        
        TabView(selection: $selected) {
           
            HomeView(viewRouter: ViewRouter()).tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar0)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar0)")
            })
            
            MapView(viewRouter: ViewRouter()).tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar1)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar1)")
            })
            
            SearchView(viewRouter: ViewRouter()).tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar2)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar2)")
            })
            
            SettingsView(viewRouter: ViewRouter()).tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar3)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar3)")
            })
        }.accentColor(Color.red)
        
//        SplashScreen()
//               .opacity(showSplash ? 1 : 0)
//               .onAppear {
//                 DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
//                   SplashScreen.shouldAnimate = false
//                   withAnimation() {
//                     self.showSplash = false
//                   }
//                 }
//             }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
