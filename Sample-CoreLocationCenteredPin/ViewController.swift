//
//  ViewController.swift
//  Sample-CoreLocationCenteredPin
//
//  Created by Ronaldo GomesJr on 9/11/2015.
//  Copyright © 2015 TechnophileIT. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView:MKMapView!

    var geotifications = [Geotification]()
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
//        loadAllGeotifications()
        
    }
    
    @IBAction func zoomToCurrentLocation(sender:AnyObject) {
        zoomToUserLocationInMapView(self.mapView)
    }

    func zoomToUserLocationInMapView(mapView: MKMapView) {
        if let coordinate = mapView.userLocation.location?.coordinate {
            let region = MKCoordinateRegionMakeWithDistance(coordinate, 10000, 10000)
            mapView.setRegion(region, animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        mapView.showsUserLocation = (status == .AuthorizedAlways)
    }
    
    func regionWithGeotification(geotification:Geotification) -> CLCircularRegion {
        
        let region = CLCircularRegion(center: geotification.coordinate, radius: <#T##CLLocationDistance#>, identifier: <#T##String#>)
        
    }
    
    
}

