//
//  LogInViewController.swift
//  BikeProj
//
//  Created by Sam Perry on 16/02/2020.
//  Copyright © 2020 Sam Perry. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var EmailFeild: UITextField!
    
    
    @IBOutlet weak var PassFeild: UITextField!
    
    @IBOutlet weak var LoginBtn: UIButton!
    
    @IBOutlet weak var ErrLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpFrontEnd()
    }
    func setUpFrontEnd(){
        Utilities.styleTextField(EmailFeild)
        Utilities.styleTextField(PassFeild)
        Utilities.styleFilledButton(LoginBtn)
        
        ErrLabel.alpha = 0
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func LoginTap(_ sender: Any) {
    }
}
