//
//  ViewController.swift
//  FoursquareClone
//
//  Created by Onur Başdaş on 29.01.2021.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        let parseObject = PFObject(className: "Fruits")
        parseObject["name"] = "Banana"
        parseObject["calories"] = 150
        parseObject.saveInBackground { (success, error) in
            if error != nil{
                print(error?.localizedDescription)
            }else{
                print("uploaded")
            }
        }*/
        
        let query = PFQuery(className: "Fruits")
        //query.whereKey("name", equalTo: "Apple")
        query.whereKey("calories", greaterThan: 120)
        query.findObjectsInBackground { (objects, error) in
            if error != nil{
                print(error?.localizedDescription)
            }else{
                print(objects)
            }
        }
        
        
    }


}

