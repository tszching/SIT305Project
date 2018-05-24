//
//  StartGame5ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class StartGame5ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Get shared application
        if let delegate = UIApplication.shared.delegate as? AppDelegate{
           
            //Score is not 0 then display Score
            if delegate.score != 0 {
                lblScore.text = String(delegate.score!)
            }
        }
        //Ppl button is Hidden after click once
        if stateLevel1.ppl {
            ppl.isHidden = true
        }
        //Windmill button is Hidden after click once
        if stateLevel1.windmill {
            windmill.isHidden = true
        }
        //Up arrow button is showing after click Windmill and Ppl buttons
        if stateLevel1.ppl, stateLevel1.windmill {
            upbtn.isHidden = false
        }
    }
    
    //All outlets
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var ppl: UIButton!
    @IBOutlet weak var windmill: UIButton!
    @IBOutlet weak var upbtn: UIButton!
    
    
    //All functions
    
    // Click ppl object methods
    @IBAction func ppl(_ sender: UIButton) {
        
        //Get shared application
        if let delegate = UIApplication.shared.delegate as? AppDelegate, !ppl.isHidden {
            
            //Score is adding new score then display latest score
            delegate.score = delegate.score! + 10
            lblScore.text = String(delegate.score!)
        }
        ppl.isHidden = true
        stateLevel1.ppl = true
        if (ppl.isHidden == true && windmill.isHidden == true)
        {
            upbtn.isHidden = false
        }
  
    }
    
    
    @IBAction func windmill(_ sender: UIButton) {
        
        //Get shared application
        if let delegate = UIApplication.shared.delegate as? AppDelegate, !windmill.isHidden {
            
            //Score is adding new score then display latest score
            delegate.score = delegate.score! + 10
            lblScore.text = String(delegate.score!)
        }
        windmill.isHidden = true
        stateLevel1.windmill = true
        if (windmill.isHidden == true && ppl.isHidden == true)
        {
            upbtn.isHidden = false
        }
        
       
    }
    
      //  Let this button identify the storyboard ID and move to the StartGame2viewcontroller screen
    
    @IBAction func bkGame2(_ sender: Any) {
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
