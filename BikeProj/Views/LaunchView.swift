//
//  LaunchView.swift
//  BikeProj
//
//  Created by Sam Perry on 12/02/2020.
//  Copyright © 2020 Sam Perry. All rights reserved.
//

import SwiftUI

struct LaunchView: View {
        @ObservedObject var viewRouter: ViewRouter

        @State private var email = ""
        @State private var password = ""
            let bluee = Color("Colour1")
           let purp = Color("Colour")
      
        var body: some View {
            VStack() {
                Text("Project Gnar")
                    .fontWeight(.heavy)
                    .font(.largeTitle).foregroundColor(Color.white)
                    .padding([.top, .bottom], 40)
                    .shadow(radius: 10.0, x: 20, y: 10)
                
                Image("logo")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10.0, x: 20, y: 10)
                    .padding(.bottom, 50)
                
                VStack(alignment: .leading, spacing: 15) {
                    TextField("Email", text: self.$email)
                        .padding()
                        .background(Color.themeTextField)
                        .cornerRadius(20.0)
                        .shadow(radius: 10.0, x: 20, y: 10)
                    
                    SecureField("Password", text: self.$password)
                        .padding()
                        .background(Color.themeTextField)
                        .cornerRadius(20.0)
                        .shadow(radius: 10.0, x: 20, y: 10)
                }.padding([.leading, .trailing], 27.5)
                
                Button(action: {}) {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.green)
                        .cornerRadius(15.0)
                        .shadow(radius: 10.0, x: 20, y: 10)
                }.padding(.top, 50)
                
                Spacer()
                HStack(spacing: 0) {
                    Text("Don't have an account? ")
                        .foregroundColor(.white)
                    Button(action: {}) {
                        Text("Sign Up!")
                            .foregroundColor(.green)
                    }
                }
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [purp, bluee]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all))
            
        }
    }

    extension Color {
        static var themeTextField: Color {
            return Color(red: 220.0/255.0, green: 230.0/255.0, blue: 230.0/255.0, opacity: 1.0)
        }
    }

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView(viewRouter: ViewRouter())
    }
}
