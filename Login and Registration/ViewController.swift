//
//  ViewController.swift
//  Login and Registration
//
//  Created by Sammy Doueck on 5/9/17.
//  Copyright © 2017 Sammy Doueck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //This is my code.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
   override func viewDidAppear(_ animated: Bool) {
        self.performSegue(withIdentifier: "login view", sender: self)
    }
}
