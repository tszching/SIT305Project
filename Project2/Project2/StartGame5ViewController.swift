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

        // Do any additional setup after loading the view.
    }

 
    @IBOutlet weak var ppl: UIButton!
    @IBOutlet weak var windmill: UIButton!
    
    @IBOutlet weak var upbtn: UIButton!
    
    
    @IBAction func ppl(_ sender: UIButton) {
        ppl.isHidden = true
        if (ppl.isHidden == true && windmill.isHidden == true)
        {
            upbtn.isHidden = false
        }
  
    }
    @IBAction func windmill(_ sender: UIButton) {
        windmill.isHidden = true
        if (windmill.isHidden == true && ppl.isHidden == true)
        {
            upbtn.isHidden = false
        }
        
       
    }
    
  
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
