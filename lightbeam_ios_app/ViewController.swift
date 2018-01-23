//
//  ViewController.swift
//  lightbeam
//
//  Created by Trisha Suri on 5/15/17.
//  Copyright © 2017 Trisha Suri. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    let locationManager = CLLocationManager()
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hotelGorgulho = CLLocation(latitude: 32.6384957, longitude: -16.9371222)
        let regionRadius: CLLocationDistance = 1000.0
        _ = MKCoordinateRegionMakeWithDistance(hotelGorgulho.coordinate, regionRadius, regionRadius)
        mapView.setRegion(<#T##region: MKCoordinateRegion##MKCoordinateRegion#>, animated: true)
        
        
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: CLLocationManagerDelegate {
    
}
