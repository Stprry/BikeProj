//
//  SearchView.swift
//  BikeProj
//
//  Created by Sam Perry on 07/02/2020.
//  Copyright © 2020 Sam Perry. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var viewRouter: ViewRouter

    var body: some View {
        Text("SearchView")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(viewRouter: ViewRouter())
    }
}
