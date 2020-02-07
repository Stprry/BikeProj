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
    
    var body: some View {
        TabView(selection: $selected) {
           
            HomeView().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar0)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar0)")
            }).tag(0)
            
            MapView().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar1)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar1)")
            }).tag(1)
            
            SearchView().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar2)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar2)")
            }).tag(2)
            
            SettingsView().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar3)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar3)")
            }).tag(3)
        }.accentColor(Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
