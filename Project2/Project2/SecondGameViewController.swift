//
//  SecondGameViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class SecondGameViewController: UIViewController {

    let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var lblScore: UILabel!
    
    @IBOutlet weak var rightBtn: UIButton!
    @IBOutlet weak var wine: UIButton!
    
    // Click the right answer then it will be hidden
    @IBAction func rightAnswerClick(_ sender: Any) {
        rightBtn.isHidden = false
        
    }
    //Adding Score 
    @IBAction func wine(_ sender: Any) {
        wine.isHidden = true
        stateLevel2.wine = true
        
        delegate.score = delegate.score! + 10
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
