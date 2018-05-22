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

        // Do any additional setup after loading the view.
        let delegate = UIApplication.shared.delegate as! AppDelegate
        writeScore(name: delegate.userName!, score: delegate.score!)
    }
    
    @IBAction func backtoL(_ sender: Any) {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        // init variables again
        delegate.score = 0
        stateLevel1 = StateLevel1(flower: false, cow: false, ppl: false, windmill: false)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LV") as! LevelViewController;
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
