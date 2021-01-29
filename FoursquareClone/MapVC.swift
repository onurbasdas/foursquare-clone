//
//  MapVC.swift
//  FoursquareClone
//
//  Created by Onur Başdaş on 29.01.2021.
//

import UIKit
import MapKit

class MapVC: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(title: "Save", style: UIBarButtonItem.Style.plain, target: self, action: #selector(saveButtonClicked))
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(backButtonClicked))
        
        print(PlaceModel.sharedInstance.placeName)
    }
    @objc func saveButtonClicked(){
        //parse
    }
    @objc func backButtonClicked(){
        self.dismiss(animated: true, completion: nil)
    }
    

    

}
