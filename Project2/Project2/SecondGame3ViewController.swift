//
//  SecondGame3ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 23/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class SecondGame3ViewController: UIViewController {

    let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if delegate.score != 0 {
            lblScore.text = String(delegate.score!)
        }
    }

    @IBOutlet weak var lblScore: UILabel!
    
    @IBOutlet weak var logo: UIButton!
    
    @IBOutlet weak var downBtn: UIButton!
    
    // Click logo object method
    @IBAction func logoClick(_ sender: Any) {
        
        // Score update
        delegate.score = delegate.score! + 10
        lblScore.text = String(delegate.score!)
        
        logo.isHidden = true
        stateLevel2.logo = true
        
        downBtn.isHidden = false
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
