//
//  RestaurantRandomizer.swift
//  Final_Project_Will_Stanley
//
//  Created by New Covenant on 12/9/20.
//

import UIKit

class RestaurantRandomizer: UIViewController {
    
    @IBOutlet var diceImageView: UIImageView!
    @IBOutlet var criticalLabel: UILabel!
    
    
    @IBAction func buttonGotPressed()
    {
        rollforRestaurant()
    }
    
    func rollforRestaurant()
    {
        print("Testing")
        
        let rolledNumber = Int.random(in: 1...15)
        
        let imageName = "d\(rolledNumber)"
        
        diceImageView.image = UIImage(named: imageName)
        
        if (imageName == "d1")
        {
            criticalLabel.text = "YOU HAVE CHOSEN CHILI'S BAR AND GRILL!"
        }
        else if (imageName == "d2")
        {
            criticalLabel.text = "YOU HAVE CHOSEN LITTLE PANDA!"
        }
        else if (imageName == "d3")
        {
            criticalLabel.text = "YOU HAVE CHOSEN LOS ARCOS!"
        }
        else if (imageName == "d4")
        {
            criticalLabel.text = "YOU HAVE CHOSEN TEXAS ROADHOUSE!"
        }
        else if (imageName == "d5")
        {
            criticalLabel.text = "YOU HAVE CHOSEN COPPER CREEK!"
        }
        else if (imageName == "d6")
        {
            criticalLabel.text = "YOU HAVE CHOSEN OLIVE GARDEN!"
        }
        else if (imageName == "d7")
        {
            criticalLabel.text = "YOU HAVE CHOSEN TACO BELL!"
        }
        else if (imageName == "d8")
        {
            criticalLabel.text = "YOU HAVE CHOSEN ANN'S KITCHEN!"
        }
        else if (imageName == "d9")
        {
            criticalLabel.text = "YOU HAVE CHOSEN WHATABURGER!"
        }
        else if (imageName == "d10")
        {
            criticalLabel.text = "YOU HAVE CHOSEN SPICY INDIA!"
        }
        else if (imageName == "d11")
        {
            criticalLabel.text = "YOU HAVE CHOSEN LYTLE LAND!"
        }
        else if (imageName == "d12")
        {
            criticalLabel.text = "YOU HAVE CHOSEN MCDONALD'S!"
        }
        else if (imageName == "d13")
        {
            criticalLabel.text = "YOU HAVE CHOSEN LA POPULAR BAKERY!"
        }
        else if (imageName == "d14")
        {
            criticalLabel.text = "YOU HAVE CHOSEN BONZAI JAPANESE GRILL!"
        }
        else if (imageName == "d15")
        {
            criticalLabel.text = "YOU HAVE CHOSEN SONIC DRIVE THRU!"
        }
        else
        {
            criticalLabel.text = ""
        }
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        rollforRestaurant()
    }
    
}

