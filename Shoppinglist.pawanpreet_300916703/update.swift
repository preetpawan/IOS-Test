//
//  update.swift
//  ToDo_pawanpreet300916703
//
//  Created by pawanpreet kaur on 2017-02-21.
//  Copyright © 2017 Pawanpreet kaur. All rights reserved.
// Student Name: Pawanpreet Kaur
// Student Id: 300916703

import UIKit
import UIKit
import Firebase
import FirebaseDatabase


class update: UIViewController {
    
    @IBOutlet weak var textbox1: UITextField!
    @IBOutlet weak var textbox2: UITextView!
     var pojoo : pojo!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        textbox1.text = pojoo.txt1
        textbox2.text = pojoo.txt2
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var databaseref : FIRDatabaseReference!
    {
        return FIRDatabase.database().reference()
    }
    
    @IBAction func update(_ sender: Any) {
     //   let todoref = databaseref.child("todo").childByAutoId()
        
        let text1 = textbox1.text
        let text2 = textbox2.text
        
        let updatepojo = pojo(txt1: text1!, txt2: text2!)
        
        let key = pojoo.ref!.key
        
        let updateref = databaseref.child("/shoppinglistapp/\(key)/")
        updateref.updateChildValues(updatepojo.toAnyObject())
        //self.navigationController?.popViewController(animated: true)
      
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
