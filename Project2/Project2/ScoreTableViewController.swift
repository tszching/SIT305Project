//
//  ScoreTableViewController.swift
//  Project2
//
//  Created by DARKEUNG on 22/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class ScoreTableViewController: UITableViewController {
    

    // Variables: (History of saved scores)
    var scoreHistory: History?
    
    @IBAction func dismissAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Read score history from json file
        scoreHistory = readData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    // MARK: - Table view data source

    // Section number is 1
    override func numberOfSections(in
        tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        // Count of saved in-game result in score history
        
        if scoreHistory == nil {
            return 0
        }
        return scoreHistory!.data.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scorecell", for: indexPath)

        let scoreInfo = scoreHistory!.data[indexPath.row]
        
        // display username
        cell.textLabel?.text = scoreInfo.userName
        
        // display user's highest score
        cell.detailTextLabel?.text = String(scoreInfo.score)

        return cell
    }
    


}
