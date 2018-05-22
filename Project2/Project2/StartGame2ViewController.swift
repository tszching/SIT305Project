//
//  StartGame2ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class StartGame2ViewController: UIViewController {

    @IBOutlet weak var lblScore: UILabel!
    
    // Variables
    var gameTimer : Timer?
    var gravity : UIGravityBehavior?
    var animator : UIDynamicAnimator?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let delegate = UIApplication.shared.delegate as? AppDelegate{
            if delegate.score != 0 {
                lblScore.text = String(delegate.score!)
            }
        }
        
        // Set timer to show snowflaks
        gameTimer = Timer.scheduledTimer(timeInterval: 1,
                                         target: self,
                                         selector: #selector(StartGame2ViewController.addenemy(_ :)), userInfo: nil, repeats: true)
        
        // Register an animator
        animator = UIDynamicAnimator(referenceView: self.view)
        gravity = UIGravityBehavior(items:[])
        
        //Gravity magnitude and direction
        let vector = CGVector(dx: 0.0, dy: 0.1)
        gravity?.gravityDirection = vector
        animator?.addBehavior(gravity!)
        
        // Loading all gif images 
        GifView.loadGif(name: "try")
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @objc func addenemy ( _ : Any) {
        
        //Pick a random x position for the balloon
        let xCoordinate = arc4random() % UInt32 (self.view.bounds.width)
        
        //Create a button, set Image, assign touchUpInside handler, add it to the view and gravity animator
        
        let btn = UIButton(frame: CGRect (x: Int(xCoordinate), y:60, width: 30, height : 30))
        btn.setImage(UIImage(named: "enemy2"), for: .normal)
        btn.addTarget(self, action: #selector(self.enemypopup(sender:)), for: .touchUpInside )
        self.view.addSubview(btn)
        
        gravity?.addItem( btn as UIView)
        
    }
    
    @objc func enemypopup (sender : UIButton) {
        
        sender.setImage(UIImage (named : "enemy1"), for: .normal)
        UIView.animate(withDuration: 0.4, animations:{sender.alpha = 0},
                       completion: {(true) in sender.removeFromSuperview()})
        
    }
    
   // All outlets
    @IBOutlet weak var GifView: UIImageView!
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
   

    
//  Let this button identify the storyboard ID and move to the StartGame5viewcontroller screen
    
    @IBAction func Game5(_ sender: Any) {
        
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
