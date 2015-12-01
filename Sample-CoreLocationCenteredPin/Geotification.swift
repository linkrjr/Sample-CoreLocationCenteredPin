//
//  Geotification.swift
//  Sample-CoreLocationCenteredPin
//
//  Created by Ronaldo GomesJr on 9/11/2015.
//  Copyright © 2015 TechnophileIT. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class Geotification: NSObject, MKAnnotation {

    var coordinate:CLLocationCoordinate2D
    var radius: CLLocationDirection
    var identifier:String
    
    init(coordinate: CLLocationCoordinate2D, radius:CLLocationDirection, identifier:String) {
        self.coordinate = coordinate
        self.radius = radius
        self.identifier = identifier
    }
    
}
