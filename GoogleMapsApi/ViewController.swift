//
//  ViewController.swift
//  GoogleMapsApi
//
//  Created by MAC on 29/05/20.
//  Copyright © 2020 Ejemplo. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate Mexico City
        let camera = GMSCameraPosition.camera(withLatitude: 19.4326, longitude: -99.1332, zoom: 10.0)
        let mapView = GMSMapView.map(withFrame: view.bounds, camera: camera)
        mapView.settings.compassButton = true
        mapView.settings.indoorPicker = true
        mapView.settings.myLocationButton = true
        mapView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        
        view.addSubview(mapView)
        view.sendSubviewToBack(mapView)
        mapView.isHidden = false
        
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 19.4326, longitude: -99.1332)
        marker.title = "Zocalo"
        marker.snippet = "Mexico City"
        marker.map = mapView
    }


}

