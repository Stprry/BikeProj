//
//  RegisterView.swift
//  BikeProj
//
//  Created by Sam Perry on 12/02/2020.
//  Copyright © 2020 Sam Perry. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    @ObservedObject var viewRouter: ViewRouter
    var body: some View {
        Text("Register View")
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(viewRouter: ViewRouter())
    }
}
