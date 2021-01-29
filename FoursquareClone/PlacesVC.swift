//
//  PlacesVC.swift
//  FoursquareClone
//
//  Created by Onur Başdaş on 29.01.2021.
//

import UIKit
import Parse

class PlacesVC: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItem.Style.plain, target: self, action: #selector(logoutButtonClicked))
    }
    @objc func addButtonClicked(){
        
    }
    @objc func logoutButtonClicked(){
        PFUser.logOutInBackground { (error) in
            if error != nil{
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            }else{
                self.performSegue(withIdentifier: "toSignUpVC", sender: nil)
            }
        }
    }
    

  
}
