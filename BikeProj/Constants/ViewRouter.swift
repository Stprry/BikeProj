//
//  ViewRouter.swift
//  BikeProj
//
//  Created by Sam Perry on 13/02/2020.
//  Copyright © 2020 Sam Perry. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ViewRouter: ObservableObject {
    
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()
    
    var currentPage: String = "page0" {
        didSet {
            objectWillChange.send(self)
        }
    }

}

//struct ViewRouter_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewRouter()
//    }
//}
