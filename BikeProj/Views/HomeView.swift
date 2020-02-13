//
//  HomeView.swift
//  BikeProj
//
//  Created by Sam Perry on 07/02/2020.
//  Copyright © 2020 Sam Perry. All rights reserved.
//

import SwiftUI

struct ImgView: View {
    let imageNames = ["home1", "home2","home3","home4"]

    var body: some View {
        List(imageNames, id: \.self) { image in
            Image(image).resizable().frame(width: 140.0, height: 145.0)
            Text(image)
             .font(.subheadline)
             .fontWeight(.heavy)
            
            Text("Test Bio")
             .fontWeight(.ultraLight)
             .font(.body)
        }
    }
}


struct HomeView: View {
   @State var myRides = false
   @ObservedObject var viewRouter: ViewRouter

    var body: some View {
       VStack {
        
       Button(action: {
        self.viewRouter.currentPage = "page1"
        }) {
            Text("Log In / Register")
        }
            
           Text("(Home View) Freinds Upcoming Rides")
            .font(.callout)
               .fontWeight(.heavy)
        ZStack(alignment:.bottomTrailing){
            Toggle(isOn: $myRides) {
                Spacer()
                Text("My Upcoming Rides")
                if (myRides == true){
                    // do stuff
                }
            }
        }
        ScrollView (.horizontal){
            Text("Your Upcoming rides")
            ImgView()
        }
    }.padding(.horizontal, 20)
  }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewRouter: ViewRouter())
    }
}
