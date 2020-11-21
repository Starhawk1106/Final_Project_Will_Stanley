//
//  ARFTableViewController.swift
//  Final_Project_Will_Stanley
//
//  Created by William Stanley on 11/21/20.
//

import UIKit

class ARFTableViewController: UITableViewController {
    
    //DELET LATER
    var outerArray = ["Dine-In Restaurants", "Take Out Restaurants", "Fast Food Restaurants"]
    var innerArray1 = ["Restaurant 1", "Restaurant 2", "Restaurant 3"]
    var innerArray2 = ["Restaurant 1", "Restaurant 2", "Restaurant 3", "Restaurant 4"]
    
    var mediaModel: MediaDataModel? {
        didSet {
            tableView.reloadData()
        }
    }
    
    var dataController = DataController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "ARF"
        
        // 1
        let nav = self.navigationController?.navigationBar
         
        // 2
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.init(red: 138/255, green: 43/255, blue: 226/255, alpha: 1)
         
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 60))
        imageView.contentMode = .scaleAspectFit
             
        // 4
        let image = UIImage(named: "ARFLogo")
        imageView.image = image
             
        // 5
        navigationItem.titleView = imageView
        
        //Call dataController
        dataController.getJSONData(completion: { dataModel in
            self.mediaModel = dataModel
        })
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return outerArray.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (section == 0) {
            return innerArray1.count
        } else if (section == 1) {
            return innerArray2.count
        } else {
            return 1
        }
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "string"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mediaCell", for: indexPath)
        
//        var arrayForThisCell = [Any]()
//
//        if (indexPath.section == 0) {
//            arrayForThisCell = innerArray1
//        } else if (indexPath.section == 1) {
//            arrayForThisCell = innerArray2
//        }
//
//        // Configure the cell...
//        cell.textLabel?.text = arrayForThisCell[indexPath.row] as? String
//
        return cell
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
