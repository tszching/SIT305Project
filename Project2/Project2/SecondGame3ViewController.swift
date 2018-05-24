//
//  SecondGame3ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 23/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class SecondGame3ViewController: UIViewController {

    // Get shared application
    let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Score is not 0 then display Score
        if delegate.score != 0 {
            lblScore.text = String(delegate.score!)
        }
        // Logo button is Hidden after click once and collected then show down button
        if stateLevel2.logo {
            logo.isHidden = true
            downBtn.isHidden = false
        }
    }

    //All outlets
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var logo: UIButton!
    @IBOutlet weak var downBtn: UIButton!
    
    //Function
    // Click logo object methods
    @IBAction func logoClick(_ sender: Any) {
        
        //Score is adding new score then display latest Score
        delegate.score = delegate.score! + 10
        lblScore.text = String(delegate.score!)
        
        logo.isHidden = true
        stateLevel2.logo = true
        
        downBtn.isHidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
