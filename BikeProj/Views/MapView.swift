//
//  MapView.swift
//  BikeProj
//
//  Created by Sam Perry on 07/02/2020.
//  Copyright © 2020 Sam Perry. All rights reserved.
//

import SwiftUI

struct MapView: View {
         @State var animation = true
         
 var body: some View {
     VStack(spacing: 20) {
         Button(action: { self.animation.toggle() }) {
         Text("Map View")
             .font(.largeTitle)
             .fontWeight(.bold)
             .foregroundColor(Color.black)
             .shadow(color: .gray, radius: 10, x: 0, y: 10)
         }
             .offset(y: animation ? UIScreen.main.bounds.height / 2.5 : 0)
             .animation(.easeInOut(duration: 2))
         
         Text(" Lorem ipsum")
             .font(.body)
             .foregroundColor(.gray)
             .lineSpacing(10)
             .lineLimit(23)
             .opacity(animation ? 0 : 1)
             .animation(Animation.easeInOut(duration: 3))
     }
     .frame(minHeight: 0, maxHeight: .infinity)
     .padding(.horizontal, 20)
//        .onAppear { self.animation.toggle() }
 }
}
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
