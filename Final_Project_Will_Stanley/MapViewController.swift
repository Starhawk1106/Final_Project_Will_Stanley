//
//  ViewController.swift
//  Final_Project_Will_Stanley
//
//  Created by William Stanley on 11/19/20.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    //32.4487° N, 99.7331° W
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let annotation0 = MKPointAnnotation()
        annotation0.coordinate = CLLocationCoordinate2D(latitude: 32.4487, longitude: -99.7331)
        
        let annotation1 = MKPointAnnotation()
        annotation1.coordinate = CLLocationCoordinate2D(latitude: 32.4795, longitude: -99.6965)
        annotation1.title = "Chili's Grill & Bar- American Dine In Restaurant"
        annotation1.subtitle = "1702 TX-351, Abilene, TX 79601"
        mapView.addAnnotation(annotation1)
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = CLLocationCoordinate2D(latitude: 32.4611, longitude: -99.7035)
        annotation2.title = "Little Panda- Chinese Take Out Restaurant"
        annotation2.subtitle = "1035 N Judge Ely Blvd, Abilene, TX 79601"
        mapView.addAnnotation(annotation2)
        
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = CLLocationCoordinate2D(latitude: 32.4746, longitude: -99.7429)
        annotation3.title = "Los Arcos- Mexican Dine In Restaurant"
        annotation3.subtitle = "1902 Ambler Ave, Abilene, TX 79603"
        mapView.addAnnotation(annotation3)
        
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = CLLocationCoordinate2D(latitude: 32.4321, longitude: -99.7862)
        annotation4.title = "Texas Roadhouse- Steakhouse Dine In Restaurant"
        annotation4.subtitle = "1381 S Danville Dr, Abilene, TX 79605"
        mapView.addAnnotation(annotation4)
        
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = CLLocationCoordinate2D(latitude: 32.3979, longitude: -99.7170)
        annotation5.title = "Copper Creek- Seafood Dine In Restaurant"
        annotation5.subtitle = "4401 Loop 322, Abilene, TX 79602"
        mapView.addAnnotation(annotation5)
        
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = CLLocationCoordinate2D(latitude: 32.4115, longitude: -99.7747)
        annotation6.title = "Olive Garden- Italian Dine In Restaurant"
        annotation6.subtitle = "3210 S Clack St, Abilene, TX 79606"
        mapView.addAnnotation(annotation6)
        
        let annotation7 = MKPointAnnotation()
        annotation7.coordinate = CLLocationCoordinate2D(latitude: 32.4749, longitude: -99.7307)
        annotation7.title = "Taco Bell- Mexican Fast Food Restaurant"
        annotation7.subtitle = "2201 Pine St, Abilene, TX 79601"
        mapView.addAnnotation(annotation7)
        
        let annotation8 = MKPointAnnotation()
        annotation8.coordinate = CLLocationCoordinate2D(latitude: 32.4506, longitude: -99.7645)
        annotation8.title = "Ann's Thai Kitchen- Thai Dine In Restaurant"
        annotation8.subtitle = "3309 S 1st St, Abilene, TX 79605"
        mapView.addAnnotation(annotation8)
        
        let annotation9 = MKPointAnnotation()
        annotation9.coordinate = CLLocationCoordinate2D(latitude: 32.4479, longitude: -99.7083)
        annotation9.title = "Whataburger- American Fast Food Restaurant"
        annotation9.subtitle = "893 E Hwy 80 E, Abilene, TX 79601"
        mapView.addAnnotation(annotation9)
        
        let annotation10 = MKPointAnnotation()
        annotation10.coordinate = CLLocationCoordinate2D(latitude: 32.4896, longitude: -99.7243)
        annotation10.title = "Spicy India- Indian Restaurant"
        annotation10.subtitle = "243 W Stamford St, Abilene, TX 79601"
        mapView.addAnnotation(annotation10)
        
        let annotation11 = MKPointAnnotation()
        annotation11.coordinate = CLLocationCoordinate2D(latitude: 32.4382, longitude: -99.7051)
        annotation11.title = "Lytle Land & Cattle Company- Steakhouse Dine In Restaurant"
        annotation11.subtitle = "1150 E South 11th St, Abilene, TX 79602"
        mapView.addAnnotation(annotation11)
        
        let annotation12 = MKPointAnnotation()
        annotation12.coordinate = CLLocationCoordinate2D(latitude: 32.4316, longitude: -99.7614)
        annotation12.title = "McDonalds- American Fast Food Restaurant"
        annotation12.subtitle = "3147 S 14th St, Abilene, TX 79605"
        mapView.addAnnotation(annotation12)
        
        let annotation13 = MKPointAnnotation()
        annotation13.coordinate = CLLocationCoordinate2D(latitude: 32.4136, longitude: -99.7420)
        annotation13.title = "La Popular- Mexican Take Out Restaurant"
        annotation13.subtitle = "3001 S Treadaway Blvd, Abilene, TX 79602"
        mapView.addAnnotation(annotation13)
        
        let annotation14 = MKPointAnnotation()
        annotation14.coordinate = CLLocationCoordinate2D(latitude: 32.4271, longitude: -99.7877)
        annotation14.title = "Bonzai Japanese- Japanese Take Out Restaurant"
        annotation14.subtitle = "1802 S Clack St, Abilene, TX 79605"
        mapView.addAnnotation(annotation14)
        
        let annotation15 = MKPointAnnotation()
        annotation15.coordinate = CLLocationCoordinate2D(latitude: 32.4506, longitude: -99.7429)
        annotation15.title = "Sonic- Drive-In Fast Food Restaurant"
        annotation15.subtitle = "1734 N 1st St, Abilene, TX 79603"
        mapView.addAnnotation(annotation15)
        
        let region = MKCoordinateRegion(center: annotation0.coordinate, latitudinalMeters: 12500, longitudinalMeters: 12500)
        mapView.setRegion(region, animated: true)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

//--name--.borderstyle = .roundedRect
