//
//  MenuListController.swift
//  Final_Project_Will_Stanley
//
//  Created by New Covenant on 12/10/20.
//

import UIKit
import SafariServices

class MenuListController: UIViewController
{
    @IBAction func buttonTapped() {
        
        let vc = SFSafariViewController(url: URL(string: "https://www.chilis.com/menu")!)
        
        present(vc, animated: true)
    }
    
    @IBAction func buttonTapped1() {
        
        let vc = SFSafariViewController(url: URL(string: "https://www.littlepandarestaurant.com")!)
        
        present(vc, animated: true)
    }
    
    @IBAction func buttonTapped2() {
        
        let vc = SFSafariViewController(url: URL(string: "https://www.texasroadhouse.com/locations/texas/abilene/menu/food/starters")!)
        
        present(vc, animated: true)
    }
    
    @IBAction func buttonTapped3() {
        
        let vc = SFSafariViewController(url: URL(string: "http://places.singleplatform.com/copper-creek-restaurant/menu?ref=google#menu_860373")!)
        
        present(vc, animated: true)
    }
    
    @IBAction func buttonTapped4() {
        
        let vc = SFSafariViewController(url: URL(string: "https://www.olivegarden.com/menu-listing/classic-entrees")!)
        
        present(vc, animated: true)
    }
    
    @IBAction func buttonTapped5() {
        
        let vc = SFSafariViewController(url: URL(string: "https://www.tacobell.com/food")!)
        
        present(vc, animated: true)
    }
    
    @IBAction func buttonTapped6() {
        
        let vc = SFSafariViewController(url: URL(string: "https://www.facebook.com/iloveannsthai")!)
        
        present(vc, animated: true)
    }
    
    @IBAction func buttonTapped7() {
        
        let vc = SFSafariViewController(url: URL(string: "https://whataburger.com/locations/523/menu")!)
        
        present(vc, animated: true)
    }
    
    @IBAction func buttonTapped8() {
        
        let vc = SFSafariViewController(url: URL(string: "http://places.singleplatform.com/spicy-india/menu")!)
        
        present(vc, animated: true)
    }
    
    @IBAction func buttonTapped9() {
        
        let vc = SFSafariViewController(url: URL(string: "https://www.lytlelandandcattle.com/lytle-menu")!)
        
        present(vc, animated: true)
    }
    
    @IBAction func buttonTapped10() {
        
        let vc = SFSafariViewController(url: URL(string: "https://www.mcdonalds.com/us/en-us/full-menu.html")!)
        
        present(vc, animated: true)
    }
    
    @IBAction func buttonTapped11() {
        
        let vc = SFSafariViewController(url: URL(string: "http://www.bonzaijapanesesteakhouse.com/Menu.htm")!)
        
        present(vc, animated: true)
    }
    
    @IBAction func buttonTapped12() {
        
        let vc = SFSafariViewController(url: URL(string: "https://www.sonicdrivein.com/menu")!)
        
        present(vc, animated: true)
    }
    
    @IBAction func buttonTapped13() {
        
        let vc = SFSafariViewController(url: URL(string: " https://www.facebook.com/pages/category/Tex-Mex-Restaurant/Los-Arcos-Restaurant-542996836058475/")!)
        
        present(vc, animated: true)
    }
    
    @IBAction func buttonTapped14() {
        
        let vc = SFSafariViewController(url: URL(string: "https://www.facebook.com/LaPopularBakery85/")!)
        
        present(vc, animated: true)
    }
}



