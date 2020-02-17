//
//  ViewController.swift
//  BikeProj
//
//  Created by Sam Perry on 16/02/2020.
//  Copyright © 2020 Sam Perry. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    
    @IBOutlet weak var registerBtn: UIButton!
    
    
    @IBOutlet weak var LoginBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpFrontEnd()
    }
    
    func setUpFrontEnd() {
        
       Utilities.styleFilledButton(registerBtn)
       Utilities.styleHollowButton(LoginBtn)
        
    }
    
}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


