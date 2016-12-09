//
//  SignInViewController.swift
//  CAFirebase
//
//  Created by heiwa on 2016/11/25.
//  Copyright © 2016年 heiwa. All rights reserved.
//


import UIKit
import Firebase

class SignInViewController :UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func signIn(_ sender: AnyObject) {
        //EmailとPasswordのTextField1に文字がなければ、その後の処理をしない
        //guard let email = emailTextField.text else{ return }
        //guard let password = passwordTextField.text else { return }
        let email = "heiwa.2012.nin@gmail.com"
        let password = "testtest"
        
        print(email)
        
        //signInWithEmail1でログイン
        //第一引数にEmail、第二引数にパスワードをとります
        FIRAuth.auth()?.signIn(withEmail: email, password: password, completion: { (user, error) in
            //エラーが無いことを確認
            if error == nil {
                if let longinUser = user {
                    //バリデーションが完了しているか確認。完了ならそのままログイン
                    if (user?.isEmailVerified)! {
                        //完了済みなら、ListViewControllerに遷移
                        print(FIRAuth.auth()?.currentUser)
                        self.performSegue(withIdentifier: "toView", sender: nil)
                        
                    }else{
                        
                    }
                    
                }
            }else{
                
                print("error...\(error?.localizedDescription)")
                
            }
        })
        
    }
}
