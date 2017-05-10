//
//  RegisterPageViewController.swift
//  Login and Registration
//
//  Created by Sammy Doueck on 5/9/17.
//  Copyright © 2017 Sammy Doueck. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var UserEmailTextFeild: UITextField!
    @IBOutlet weak var UserPasswordTextFeild: UITextField!
    @IBOutlet weak var ConfirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func RegisterButtonTapped(sender: AnyObject) {
        
        let userEmail = UserEmailTextFeild.text;
        let userPassword = UserPasswordTextFeild.text;
        let userConfirmPassword = ConfirmPasswordTextField.text;
       
        //display alert message with confirmation
    
        
        
        //check for empty feilds
        if((userEmail?.isEmpty)! || (userPassword?.isEmpty)! || (userConfirmPassword?.isEmpty)!)
        {
            print("AHH");
            return;
        }

        //check if passwords match
        if(userPassword != userConfirmPassword)
        {
            print("Hello");
            return;
        }
        // store data
       UserDefaults.standard.set(userEmail, forKey: "userEmail");
        UserDefaults.standard.set(userEmail, forKey: "userPassword");
//        UserDefaults.standard(_).synchronize();
 
}
}
