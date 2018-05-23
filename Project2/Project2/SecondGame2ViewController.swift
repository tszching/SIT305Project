//
//  SecondGame2ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class SecondGame2ViewController: UIViewController {

    let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if delegate.score != 0 {
            lblScore.text = String(delegate.score!)
        }
    }

    @IBOutlet weak var lblScore: UILabel!
    
    @IBOutlet weak var coffee: UIButton!
    
    @IBOutlet weak var pasta: UIButton!
    
    @IBOutlet weak var downBtn: UIButton!
    
    // Click coffee object methods
    @IBAction func coffeeClick(_ sender: Any) {
        
        // Score update
        delegate.score = delegate.score! + 10
        lblScore.text = String(delegate.score!)
        
        stateLevel2.coffee = true
        coffee.isHidden = true
        
        if pasta.isHidden {
            downBtn.isHidden = false
        }
    }
    
    // Click pasta object methods
    @IBAction func pastaClick(_ sender: Any) {
        
        // Score update
        delegate.score = delegate.score! + 10
        lblScore.text = String(delegate.score!)
        
        stateLevel2.pasta = true
        pasta.isHidden = true
        
        if coffee.isHidden {
            downBtn.isHidden = false
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
