//
//  Animations.swift
//  BikeProj
//
//  Created by Sam Perry on 12/02/2020.
//  Copyright © 2020 Sam Perry. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        let imageView = UIImageView(frame:CGRect(x:0,y:0,width:250,height:250))
        imageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
    }
}
