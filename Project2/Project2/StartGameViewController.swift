//
//  StartGameViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit


class StartGameViewController: UIViewController {

    @IBOutlet weak var flower: UIButton!
    @IBOutlet weak var lblScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if stateLevel1.flower {
            flower.isHidden = true
        }
        if let delegate = UIApplication.shared.delegate as? AppDelegate{
            if delegate.score != 0 {
                lblScore.text = String(delegate.score!)
            }
        }
    }
    @IBAction func flower(_ sender: UIButton) {
        flower.isHidden = true
        stateLevel1.flower = true
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            delegate.score = delegate.score! + 10
            lblScore.text = String(delegate.score!)
        }
    }
    
//  Let this button identify the storyboard ID and move to the  StartGame2viewcontroller screen
    @IBAction func Game2(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SG2") as! StartGame2ViewController
        self.present(vc, animated: true,completion: nil)
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
