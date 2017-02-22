//
//  ViewController.swift
//  Shoppinglist.pawanpreet_300916703
//
//  Created by pawanpreet kaur on 2017-02-21.
//  Copyright © 2017 Pawanpreet kaur. All rights reserved.
//

import UIKit
import UIKit
import Firebase
import FirebaseDatabase
class ViewController: UIViewController {
    
    @IBOutlet weak var textbox1: UITextField!
    @IBOutlet weak var textbox2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var databaseref : FIRDatabaseReference!
    {
        return FIRDatabase.database().reference()
    }
    
    
    @IBAction func add(_ sender: Any) {
        
        let todoref = databaseref.child("shoppinglistapp").childByAutoId()
        
        let text1 = textbox1.text
        let text2 = textbox2.text
        let pojoobj = pojo(txt1: text1!, txt2: text2!)
        todoref.setValue(pojoobj.toAnyObject())
        //self.navigationController?.popToViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
        self.navigationController?.popViewController(animated: true)
        // self.navigationController?.popToViewControllerAnimated(true)

    }
}

