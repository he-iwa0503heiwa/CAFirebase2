//
//  SignUpViewController.swift
//  CAFirebase
//
//  Created by heiwa on 2016/11/25.
//  Copyright © 2016年 heiwa. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController :UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        let email = "heiwa.2012.nin@gmail.com"
        let password = "testtest"
        //FiRAuth.auth()?.createUserWithEmailでサインアップ
        //第一引数にEmail、第二引数にパスワード
        FIRAuth.auth()?.createUser(withEmail: email, password: password, completion:{(user,error) in
            //エラーなしなら、認証完了
            if error == nil{
                user?.sendEmailVerification(completion: { (error) in
                    if error == nil {
                        self.performSegue(withIdentifier: "toSignIn", sender: nil)
                        
                        
                        
                    }else {
                        print("\(error?.localizedDescription)")
                    }
                })
            }else{
                print("\(error?.localizedDescription)")
            }
            
        })
    }
}
