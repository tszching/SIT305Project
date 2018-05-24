//
//  SecondGame2ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class SecondGame2ViewController: UIViewController {
    
    // Get shared application
    let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Score is not 0 then display Score
        if delegate.score != 0 {
            lblScore.text = String(delegate.score!)
        }
        
        // Coffee button is Hidden after click once
        if stateLevel2.coffee {
            coffee.isHidden = true
        }
        
        // Pasta button is Hidden after click once
        if stateLevel2.pasta {
            pasta.isHidden = true
        }
        
        //Down arrow button is showing after click Coffee and Pasta buttons
        if stateLevel2.coffee, stateLevel2.pasta {
            downBtn.isHidden = false
        }
    }

    
     // All Outlets
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var coffee: UIButton!
    @IBOutlet weak var pasta: UIButton!
    @IBOutlet weak var downBtn: UIButton!
    
    //All functions
    
    // Click coffee object methods
    @IBAction func coffeeClick(_ sender: Any) {
        
        //Score is adding new score then display latest score
        delegate.score = delegate.score! + 10
        lblScore.text = String(delegate.score!)
        
        // Coffee button is Hidden after click once and collected
        stateLevel2.coffee = true
        coffee.isHidden = true
        
        // Display arrow button only after clicked pasta button once
        if pasta.isHidden {
            downBtn.isHidden = false
        }
    }
    
    // Click pasta object methods
    @IBAction func pastaClick(_ sender: Any) {
        
        //Score is adding new score then display latest score
        delegate.score = delegate.score! + 10
        lblScore.text = String(delegate.score!)
        
        //Pasta button is Hidden after click once and collected
        stateLevel2.pasta = true
        pasta.isHidden = true
        
        // Display arrow button only after clicked coffee button once
        if coffee.isHidden {
            downBtn.isHidden = false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
