//
//  ViewController.swift
//  Final_Project_Will_Stanley
//
//  Created by New Covenant on 12/10/20.
//

import UIKit
import SafariServices

class DetailViewController: UIViewController {
    
    @IBOutlet var mediaImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var foodLabel: UILabel!
    @IBOutlet var rateLabel: UILabel!
    @IBOutlet var hourLabel: UILabel!
    
    
    @IBAction func buttonTapped() {
        let vc = SFSafariViewController(url: URL(string: "https://www.chilis.com/menu")!)
        
        present(vc, animated: true)
    }
    
    var detailItem: Entry? {
        didSet {
            configureView()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nav = self.navigationController?.navigationBar
         
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.init(red: 138/255, green: 100/255, blue: 226/255, alpha: 1)
        
        title = detailItem?.name
        
        configureView()
    }
    
    func configureView() {
        
        if let entry = detailItem {
            
            if let imageView = mediaImage
            {
                let url = URL(string: entry.imageURL)
                let data = try? Data(contentsOf: url!)
                imageView.image = UIImage(data: data!)
            }
            
            if let thisNameLabel = nameLabel
            {
                thisNameLabel.text = entry.name
            }
            
            if let thisLocationLabel = locationLabel
            {
                thisLocationLabel.text = entry.location
            }
            
            if let thisFoodLabel = foodLabel
            {
                thisFoodLabel.text = entry.foodType
            }
            
            if let thisRateLabel = rateLabel
            {
                thisRateLabel.text = entry.rating
            }
            
            if let thisHourLabel = hourLabel
            {
                thisHourLabel.text = entry.hoursOpen
            }
        }
    }
}
