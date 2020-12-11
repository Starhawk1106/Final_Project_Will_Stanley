//
//  DataController.swift
//  Final_Project_Will_Stanley
//
//  Created by William Stanley on 11/21/20.
//

import UIKit

class DataController: NSObject {
    
    let JSONURL = "https://api.jsonbin.io/b/5fd2a93b81ec296ae71c5c88"
    
    var dataModel: MediaDataModel?
    
    func getJSONData(completion: @escaping (_ dataModel: MediaDataModel) -> ()) {
        
        let jsonUrl = URL(string: JSONURL)
        
        let dataTask = URLSession.shared.dataTask(with: jsonUrl!) {
            (data, response, error) in
            
            guard let thisData = data else {
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let thisMediaData = try decoder.decode(MediaDataModel.self, from: thisData)
                
                self.dataModel = thisMediaData
                print(thisMediaData.franchise[0].entries[0].location)
                
            } catch let err {
                print("ERROR WAS: ", err)
            }
            
            DispatchQueue.main.async {
                completion(self.dataModel!)
            }
        }
        dataTask.resume()
    }
}
