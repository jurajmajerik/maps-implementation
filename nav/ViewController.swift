//
//  ViewController.swift
//  nav
//
//  Created by Juraj Majerik on 28/02/2017.
//  Copyright © 2017 Juraj Majerik. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    
    @IBAction func showMeWhere(_ sender: Any)
    {
        // Define destination
        let latitude: CLLocationDegrees = 52.365467
        let longitude: CLLocationDegrees = 4.898581
        
        let regionDistance: CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "My Work"
        mapItem.openInMaps(launchOptions: options)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

