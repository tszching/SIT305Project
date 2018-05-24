//
//  SecondGameViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class SecondGameViewController: UIViewController {
    
    // Get shared application
    let delegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Score is displaying the latest score
        lblScore.text = String(delegate.score!)
        
        // Display arrow button only after clicked wine button once
        if stateLevel2.wine {
            wine.isHidden = true
            call115.isHidden = true
            call118.isHidden = true
            call112.isHidden = true
            guy.isHidden = true
            rightBtn.isHidden = false
        }
    }

    
    // All Outlets
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var rightBtn: UIButton!
    @IBOutlet weak var wine: UIButton!
    @IBOutlet weak var call118: UIButton!
    @IBOutlet weak var call115: UIButton!
    @IBOutlet weak var call112: UIButton!
    @IBOutlet weak var guy: UIImageView!
    
    
    //All functions
    
    // Click right answer then hidden unwanted objects and display next target
    @IBAction func rightAnswerClick(_ sender: Any) {
        rightBtn.isHidden = false
        wine.isHidden = false
        
        call115.isHidden = true
        call118.isHidden = true
        call112.isHidden = true
        guy.isHidden = true
    }
    
    // Click wine object methods
    @IBAction func wine(_ sender: Any) {
        wine.isHidden = true
        stateLevel2.wine = true
        
        //Score is adding new score then display latest score
        delegate.score = delegate.score! + 10
        lblScore.text = String(delegate.score!)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
