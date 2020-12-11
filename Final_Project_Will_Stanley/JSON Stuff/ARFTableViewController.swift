//
//  ARFTableViewController.swift
//  Final_Project_Will_Stanley
//
//  Created by William Stanley on 11/21/20.
//

import UIKit

class ARFTableViewController: UITableViewController {
    
    //DELET LATER
//    var outerArray = ["Dine-In Restaurants", "Take Out Restaurants", "Fast Food Restaurants"]
//    var innerArray1 = ["Restaurant 1", "Restaurant 2", "Restaurant 3"]
//    var innerArray2 = ["Restaurant 1", "Restaurant 2", "Restaurant 3", "Restaurant 4,", "1", "2", "3", "4"]
    
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
        nav?.tintColor = UIColor.init(red: 138/255, green: 100/255, blue: 226/255, alpha: 1)
         
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
        return mediaModel?.franchise.count ?? 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mediaModel?.franchise[section].entries.count ?? 0
        
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return mediaModel?.franchise[section].typeofRestaurant
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mediaCell", for: indexPath)
    
    
        // Configure the cell...
        cell.textLabel?.text = mediaModel?.franchise[indexPath.section].entries[indexPath.row].name

        cell.detailTextLabel?.text = mediaModel?.franchise[indexPath.section].entries[indexPath.row].foodType
        
        return cell
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showMediaDetail" {
                    if let indexPath = tableView.indexPathForSelectedRow {
                        let selectedObject = mediaModel!.franchise[indexPath.section].entries[indexPath.row]
                        let controller = segue.destination as! DetailViewController
                        controller.detailItem = selectedObject
            }
        }
    }
}
