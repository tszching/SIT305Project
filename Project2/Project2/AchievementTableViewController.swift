//
//  AchievementTableViewController.swift
//  Project2
//
//  Created by DARKEUNG on 23/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class AchievementTableViewController: UITableViewController {
    
    // Achieved Object Array
    var achievement: [ObjectJson]?
    // Object Detail Data
    var objectJson: [ObjectJson]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get json array of object detail
        objectJson = getObjectData()
        
        // Get array of achieved objects
        getCollectedObjects()
        
    }

    // Get array of achieved objects
    func getCollectedObjects() {
        
        // Init achievement
        achievement = []
        
        // Flower button collected
        if stateLevel1.flower {
            
            // Get flower data
            let object = findObject(name: "Tulips")
            
            // Add flower to achievement array
            achievement?.append(object)
        }
        
        // Cow button collected
        if stateLevel1.cow {
            
            // Init cow
            let object = findObject(name: "Lakenvelder cattle")
            
            // Add cow to achievement array
            achievement?.append(object)
        }
        
        // Ppl button collected
        if stateLevel1.ppl {
            
            // Init ppl
            let object = findObject(name: "Dutch")
            
            // Add ppl to achievement array
            achievement?.append(object)
        }
        
        // Windmill button collected
        if stateLevel1.windmill {
            
            // Init windmill
            let object = findObject(name: "Windmills")
            
            // Add windmill to achievement array
            achievement?.append(object)
        }
        
        // Wine button collected
        if stateLevel2.wine {
            
            // Init wine
            let object = findObject(name: "Wine")
            
            // Add wine to achievement array
            achievement?.append(object)
        }
        
        // Coffee button collected
        if stateLevel2.coffee {
            
            // Init coffee
            let object = findObject(name: "Caffe")
            
            // Add coffee to achievement array
            achievement?.append(object)
        }
        
        // Pasta button collected
        if stateLevel2.pasta {
            
            // Init pasta
            let object = findObject(name: "Pasta")
            
            // Add pasta to achievement array
            achievement?.append(object)
        }
        
        // Logo button collected
        if stateLevel2.logo {
            
            // Init logo
            let object = findObject(name: "Pizza")
            
            // Add logo to achievement array
            achievement?.append(object)
        }
        
        // Fisherman button collected
        if stateLevel3.fisherman {
            
            // Init fisherman
            let object = findObject(name: "Fisherman's Wharf")
            
            // Add fisherman to achievement array
            achievement?.append(object)
        }
        
        // Gate button collected
        if stateLevel3.gate {
            
            // Init gate
            let object = findObject(name: "Golden Gate Bridge")
            
            // Add gate to achievement array
            achievement?.append(object)
        }
        
        // Car button collected
        if stateLevel3.car {
            
            // Init car
            let object = findObject(name: "Cable car")
            
            // Add car to achievement array
            achievement?.append(object)
        }
        
        // Burger button collected
        if stateLevel3.burger {
            
            // Init burger
            let object = findObject(name: "Hamburgers")
            
            // Add burger to achievement array
            achievement?.append(object)
        }
        
    }
    
    // Find ObjectJson with name
    func findObject(name: String) -> ObjectJson{
        for object in objectJson! {
            if object.name == name {
                return object
            }
        }
        // Return empty object when objects not exist
        return ObjectJson(name: "", image: "", detail: "")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Connected to the Parents ViewController: Back to GameOver - ViewController
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows
        return achievement!.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Get tableviewcell
        let cell = tableView.dequeueReusableCell(withIdentifier: "AchievementCell", for: indexPath) as! AchievementCell
        
        // Get collected object
        let object = achievement?[indexPath.row]
        
        // Show data of object
        cell.objectImage.image = UIImage(named: (object?.image)!)
        cell.lblTitle.text = object?.name
        cell.lblDescription.text = object?.detail
        
        // Transparent burger
        if object?.image == "burger" {
            cell.objectImage.tintColor = UIColor.white
        }
        
        return cell
    }

}
