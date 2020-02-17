//
//  SignUpViewController.swift
//  BikeProj
//
//  Created by Sam Perry on 16/02/2020.
//  Copyright © 2020 Sam Perry. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

   
    @IBOutlet weak var FirstNameFeild: UITextField!
    
    @IBOutlet weak var SurNameFeild: UITextField!
    
    @IBOutlet weak var EmailFeild: UITextField!
    
    @IBOutlet weak var PasswordFeild: UITextField!
    
    @IBOutlet weak var SignUpBtn: UIButton!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpFrontEnd()
    }
    
    func setUpFrontEnd(){
        ErrorLabel.alpha = 0
        
        Utilities.styleTextField(FirstNameFeild)
        Utilities.styleTextField(SurNameFeild)
        Utilities.styleTextField(EmailFeild)
        Utilities.styleTextField(PasswordFeild)
        Utilities.styleFilledButton(SignUpBtn)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func signUpTap(_ sender: Any) {
    }
}
