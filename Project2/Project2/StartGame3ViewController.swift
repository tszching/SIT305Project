//
//  StartGame3ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class StartGame3ViewController: UIViewController {

    @IBOutlet weak var lblScore: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let delegate = UIApplication.shared.delegate as? AppDelegate{
            if delegate.score != 0 {
                lblScore.text = String(delegate.score!)
            }
        }

        //loading all Gif images
        GifView.loadGif(name: "try")
        
        
        // Do any additional setup after loading the view.
    }
    
 
    // All outlets
    @IBOutlet weak var GifView: UIImageView!
    @IBOutlet weak var Attack1: UIButton!
    @IBOutlet weak var Ignore1: UIButton!

    @IBOutlet weak var upbutton: UIButton!
    
    @IBOutlet weak var rightbutton: UIButton!
  
    
    
    
    @IBAction func Attack1(_ sender: Any) {
        Attack1.isHidden = true
        if (Attack1.isHidden == true) {
            GifView.isHidden = true
            Ignore1.isHidden = true
            upbutton.isHidden = false
            rightbutton.isHidden = false
            
        }
        
    }
    
    @IBAction func Ignore1(_ sender: Any) {
        
    }
    
    @IBAction func Game4(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SG4") as! StartGame4ViewController; self.present(vc, animated: true,completion: nil)
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
