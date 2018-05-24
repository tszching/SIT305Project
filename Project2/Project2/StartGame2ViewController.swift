//
//  StartGame2ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class StartGame2ViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get shared application
        if let delegate = UIApplication.shared.delegate as? AppDelegate{
            
            //Score is not 0 then display Score
            if delegate.score != 0 {
                lblScore.text = String(delegate.score!)
            }
        }
        
        // Loading all gif images 
        GifView.loadGif(name: "try")
    }
    
   // All outlets
    @IBOutlet weak var GifView: UIImageView!
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var Attack1: UIButton!
    @IBOutlet weak var Ignore1: UIButton!
    @IBOutlet weak var downbutton: UIButton!
    @IBOutlet weak var leftbutton: UIButton!
    
    
    
    @IBAction func Attack1(_ sender: Any) {
            Attack1.isHidden = true
        if (Attack1.isHidden == true) {
            GifView.isHidden = true
            Ignore1.isHidden = true
            downbutton.isHidden = false
            leftbutton.isHidden = false
        }
        
    }
 
    @IBAction func Ignore1(_ sender: Any) {
 
    }
   

    

    
    @IBAction func Game5(_ sender: Any) {
        //  Let this button identify the storyboard ID and move to the StartGame5viewcontroller screen
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SG5") as! StartGame5ViewController; self.present(vc, animated: true, completion: nil)
        
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
