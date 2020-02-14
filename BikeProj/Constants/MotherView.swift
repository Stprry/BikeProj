//
//  MotherView.swift
//  BikeProj
//
//  Created by Sam Perry on 14/02/2020.
//  Copyright © 2020 Sam Perry. All rights reserved.
//

import SwiftUI

struct MotherView: View {
     @ObservedObject var viewRouter: ViewRouter
     
     var body: some View {
         VStack {
             if viewRouter.currentPage == "page0" {
                 HomeView(viewRouter: viewRouter)
             } else if viewRouter.currentPage == "page1" {
                 LaunchView(viewRouter: viewRouter)
             }else if viewRouter.currentPage == "page2" {
                 RegisterView(viewRouter: viewRouter)
             }else if viewRouter.currentPage == "page3" {
                 SearchView(viewRouter: viewRouter)
             }else if viewRouter.currentPage == "page4" {
                 MapView(viewRouter: viewRouter)
             }else if viewRouter.currentPage == "page5" {
                 SettingsView(viewRouter: viewRouter)
             }
         }
     }
    func ContentView(){}
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter())
    }
}
