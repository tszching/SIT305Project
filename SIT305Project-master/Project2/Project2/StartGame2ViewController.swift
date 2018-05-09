//
//  StartGame2ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 20/4/2018.
//  Copyright © 2018 CHLOE KWOK. All rights reserved.
//

import UIKit

class StartGame2ViewController: UIViewController {

    
    
    
    // Variables
     var gameTimer : Timer?
    var gravity : UIGravityBehavior?
    var animator : UIDynamicAnimator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
