//
//  StartGame4ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit



class StartGame4ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if stateLevel1.cow {
            cow.isHidden = true
        }
    }
    @IBOutlet weak var cow: UIButton!
    @IBAction func cow(_ sender: Any) {
    
        cow.isHidden = true
        stateLevel1.cow = true
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            delegate.score = delegate.score! + 10
        }
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
