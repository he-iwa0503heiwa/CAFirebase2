//
//  DataBaseViewController.swift
//  CAFirebase
//
//  Created by heiwa on 2016/12/02.
//  Copyright © 2016年 heiwa. All rights reserved.
//


import UIKit
import Firebase

class DataBaseViewController: UIViewController {
    let ref = FIRDatabase.database().reference()//Firebaseのルートを宣言しとく
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        // Do any additional setup after loading the view, typically from a nib.
        //        ref.setValue("data")
        //        ref.setValue("naganomei")
        //        let mei : NSArray = ["nagano","abe","fujino"]
        //        ref.child("child").setValue(mei)
        //        let dictionary : NSDictionary = ["aguri":"okuzono","zume":"hashizume"]
        //        ref.child("child").setValue(dictionary)
        let array : NSArray = ["Andoroid","iPhone","Unity","Web D","Web S"]
        ref.child("Life is Tech").setValue(array)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
