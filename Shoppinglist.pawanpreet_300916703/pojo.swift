//
//  pojo.swift
//  ToDo_pawanpreet300916703
//
//  Created by pawanpreet kaur on 2017-02-21.
//  Copyright © 2017 Pawanpreet kaur. All rights reserved.
// Student Name: Pawanpreet Kaur
// Student Id: 300916703

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

struct pojo {
    var txt1 :String!
    var txt2: String!
    var ref : FIRDatabaseReference!
    var key : String!
    
    init(txt1 : String, txt2 : String, key : String = "") {
        self.txt1 = txt1
        self.txt2 = txt2
        self.key = key
        self.ref = FIRDatabase.database().reference()
    }
    
    init(snapshot : FIRDataSnapshot) {
        
        let value = snapshot.value as? NSDictionary
        
        self.txt1 = value?["txt1"] as! String
        self.txt2 = value?["txt2"] as! String
        self.key = snapshot.key
        self.ref = snapshot.ref
        
    }
    
    func toAnyObject() -> [String : AnyObject]
    {
        return["txt1" : txt1 as AnyObject , "txt2" : txt2 as AnyObject]
    }
}
