//
//  GameOverViewController.swift
//  Project2
//
//  Created by DARKEUNG on 22/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Get shared application of score and username
        let delegate = UIApplication.shared.delegate as! AppDelegate
        writeScore(name: delegate.userName!, score: delegate.score!)
    }
    // Main Function
    @IBAction func backtoL(_ sender: Any) {
        //Back to LevelViewController the shared application will load the variables as below
        let delegate = UIApplication.shared.delegate as! AppDelegate
        // init variables again
        delegate.score = 0
        stateLevel1 = StateLevel1(flower: false, cow: false, ppl: false, windmill: false)
        stateLevel2 = StateLevel2(wine: false, coffee: false, pasta: false, logo: false)
        stateLevel3 = StateLevel3(fisherman: false, gate: false, car: false, burger: false)
        
        
        //  This ViewController identify the storyboard ID and move to the Levelviewcontroller screen
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LV") as! LevelViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
