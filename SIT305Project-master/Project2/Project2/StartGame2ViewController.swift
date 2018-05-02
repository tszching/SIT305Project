//
//  StartGame2ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 20/4/2018.
//  Copyright © 2018 CHLOE KWOK. All rights reserved.
//

import UIKit

class StartGame2ViewController: UIViewController {

    
    @IBOutlet weak var Img: UIImageView!
    
    // Variables
     var gameTimer : Timer?
    var gravity : UIGravityBehavior?
    var animator : UIDynamicAnimator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
Img.center.x = self.view.frame.width + 30
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
        
        
        
        
        
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 30, initialSpringVelocity: 30, options: UIViewAnimationOptions(rawValue: 0), animations: ({
            self.Img.center.x = self.view.frame.width / 2
        })
            , completion: nil)
            
        
    
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
