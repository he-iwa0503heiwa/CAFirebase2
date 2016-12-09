//
//  ViewController.swift
//  CAFirebase
//
//  Created by heiwa on 2016/11/25.
//  Copyright © 2016年 heiwa. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    //let ref = FIRDatabase.database().reference()//Firebaseのルートを宣言しとく
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //  ref.setValue("data")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func signUp(sender: UIButton) {
        performSegue(withIdentifier: "toSignUp", sender: nil)
    }
    @IBAction func signIn(sender: UIButton) {
        performSegue(withIdentifier: "toSignIn", sender: nil)
    }
}

