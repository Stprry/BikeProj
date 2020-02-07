//
//  HomeView.swift
//  BikeProj
//
//  Created by Sam Perry on 07/02/2020.
//  Copyright © 2020 Sam Perry. All rights reserved.
//

import SwiftUI

struct HomeView: View {
   @State var animation = true
   
   var body: some View {
       VStack {
           Text("Home View Freinds Upcoming Rides")
               .font(.largeTitle)
               .fontWeight(.heavy)
        
        GroupBox(label: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Label")/*@END_MENU_TOKEN@*/) {
            /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
        }
           
       }.padding(.horizontal, 20)
   }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
