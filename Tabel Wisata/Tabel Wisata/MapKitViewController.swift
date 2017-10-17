//
//  MapKitViewController.swift
//  Tabel Wisata
//
//  Created by Gw on 17/10/17.
//  Copyright © 2017 Gw. All rights reserved.
//

import UIKit
//tambahkan library
import MapKit

class MapKitViewController: UIViewController {

    @IBOutlet weak var petaWisata: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //deklarasi latitude and longitude in latlong.net
        
        let lokalWisata = CLLocationCoordinate2D(latitude:1.034926 , longitude:104.003459 )
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center:lokalWisata, span: span)
        petaWisata.setRegion(region, animated: true)
        
        //annotation berfungsi untuk menjadi maker pada maps
        // ketika maps di pencet akan keluar title dan subtitle
        let annotation = MKPointAnnotation()
        annotation.coordinate = lokalWisata
        annotation.title = "Pantai Anyar"
        annotation.subtitle = "Jakarta"
        petaWisata.addAnnotation(annotation)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


