//
//  AddPlaceVC.swift
//  FoursquareClone
//
//  Created by Onur Başdaş on 29.01.2021.
//

import UIKit

class AddPlaceVC: UIViewController {
    
    @IBOutlet weak var placeNameText: UITextField!
    @IBOutlet weak var placeTypeText: UITextField!
    @IBOutlet weak var placeAtmosphereText: UITextField!
    @IBOutlet weak var placeImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func nextButtonClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "toMapVC", sender: nil)
    }
    
}
