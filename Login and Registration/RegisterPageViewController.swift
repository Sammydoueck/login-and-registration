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

weak var UserEmailTextFeild: UITextField!
weak var UserPasswordTextFeild: UITextField!
weak var ConfirmPasswordTextField: UITextField!
weak var errorBlank: UILabel!
weak var errorEmail: UILabel!
weak var errorPass: UILabel!
weak var errorMatch: UILabel!
weak var errorShort: UILabel!

let userEmail = UserEmailTextFeild.text;
let userPassword = UserPasswordTextFeild.text;
let userConfirmPassword = ConfirmPasswordTextField.text;



/* TODO: 1. check for blanks (.isEmpty)
 TODO: 2.check for all spaces
 TODO: 3. check for illegal characters (use errorEmail)
 TODO: 4. check if passwords match
 TODO: 5. email already found (use errorEmail)
 TODO: 6. write to database
 TODO: 7. customize (make it look nice)
 TODO: 8. make incorrect password shake
 TODO: 9. make labels (make them hidden)(errorPass.hidden)
 TODO: 10. make constraints
 
 */

if ( !( userEmail.includes(".") && userEmail.includes("$") && userEmail.includes("[") && userEmail.includes("]") && userEmail.includes("#") && userEmail.includes(" ") ) && userEmail.isEmpty && userPassword === userConfirmPassword && userPassword.length > 5 && userPassword.trim() = ""
{
    errorPass.hidden = false;
    return;
}

 if
 {
 var account = Account(email: userEmail!, password: userPassword!);
 firebaseRef.child(account.email).setValue(account.password, forKey: "password")

 }



class RegisterPageViewController: UIViewController {


    
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
        
        
    
               // Remember me data
//       UserDefaults.standard.set(userEmail, forKey: "userEmail");
//        UserDefaults.standard.set(userEmail, forKey: "userPassword");
//        UserDefaults.standard(_).synchronize();
        
        /* sending to firebase
         
         
         
 */
 
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
