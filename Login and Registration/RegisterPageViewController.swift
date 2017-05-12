//
//  RegisterPageViewController.swift
//  Login and Registration
//
//  Created by Sammy Doueck on 5/9/17.
//  Copyright © 2017 Sammy Doueck. All rights reserved.
//

import UIKit
import FirebaseDatabase;
import Firebase;

/* TODO: 1. check for blanks (.isEmpty)
 TODO: 2. check for all spaces
 TODO: 3. check for illegal characters (use errorEmail)
 TODO: 4. check if passwords match
 TODO: 5. email already found (use errorEmail)
 TODO: 6. write to database
 TODO: 7. customize (make it look nice)
 TODO: 8. make incorrect password shake
 9. make labels (make them hidden)(errorPass.hidden)- done
 TODO: 10. make constraints
 
 */


class RegisterPageViewController: UIViewController {

    @IBOutlet var errorBlank: UILabel!
    @IBOutlet var userEmailTextField: UITextField!
    @IBOutlet var errorEmail: UILabel!
    @IBOutlet var userPasswordTextField: UITextField!
    @IBOutlet var errorMatch: UILabel!
    @IBOutlet var errorPass: UILabel!
    @IBOutlet var errorShort: UILabel!
    @IBOutlet var userConfirmPasswordTextField: UITextField!
    @IBOutlet var termsAgree: UISwitch!
    @IBOutlet var errorTerms: UILabel!
    
    var firebaseRef: FIRDatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        firebaseRef = FIRDatabase.database().reference(withPath: "users/");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func RegisterButtonTapped(sender: AnyObject) {
        
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userConfirmPassword = userConfirmPasswordTextField.text;
        
        if userEmail?.range(of: ".") != nil || ((userEmail?.range(of: "#")) != nil) || ((userEmail?.range(of: "$")) != nil) || ((userEmail?.range(of: "[")) != nil) || ((userEmail?.range(of: "]")) != nil)
        {
            errorEmail.isHidden = false;
            
            
            print(userEmail!.contains("@") && userEmail!.contains("$"));
            
            return;
        }
        if (userEmail?.isEmpty)!
        {
            errorBlank.isHidden = false;
            return;
        }
        
        if !termsAgree.isOn
        {
            errorTerms.isHidden = false;
            return;
        }
        
        if userPassword != userConfirmPassword
        {
            errorMatch.isHidden = false;
            return;
        }
        if (userPassword?.characters.count)! < 5
        {
            errorShort.isHidden = false;
            return;
        }
        if (userPasswordTextField.text?.trim().isEmpty)!
        {
            errorPass.isHidden = false;
            return;
        }
        
        
        firebaseRef.child("\(userEmail!.lowercased())").setValue("\(userPassword!)")
        self.performSegue(withIdentifier: "frontEnd", sender: nil)
    }
}

class Account
{
    var email:String!
    var password:String!
    
    init(email:String, password:String)
    {
        self.email = email
        self.password = password
    }
}

extension String
{
    func trim() -> String
    {
        return self.trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
}
