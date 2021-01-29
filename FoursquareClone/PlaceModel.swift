//
//  PlaceModel.swift
//  FoursquareClone
//
//  Created by Onur Başdaş on 29.01.2021.
//

import Foundation
import UIKit

class PlaceModel{
    
    static let sharedInstance = PlaceModel()
    var placeName = ""
    var placeType = ""
    var placeAtmosphere = ""
    var placeImage = UIImage()
    
    private init(){}
    
    
}
