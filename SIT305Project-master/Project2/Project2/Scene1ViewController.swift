//
//  Scene1ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 8/5/2018.
//  Copyright © 2018 CHLOE KWOK. All rights reserved.
//

import UIKit

class Scene1ViewController: UIViewController {
   
    
    @IBOutlet weak var FirstScene: UILabel!

    
    let scence1 = "Wow I have finally arrived to this beautiful land in Holland. This will be an amazing jounery, I can\'t wait to exploring things. Now! Let me take a look at what\'s up there!!"
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FirstScene.alpha = 0
        
    
        
       startingscene()
        // Do any additional setup after loading the view.
    }

 
   
    
    
    @IBAction func Game1(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SG") as! StartGameViewController
        self.present(vc, animated: true,completion: nil)
    }
    
    @IBAction func backL(_ sender: Any) {
        dismiss (animated: true, completion: nil)
    }
    
    // animation fading in and out
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, animations: {
         self.FirstScene.alpha = 0.6
        }) {(true) in
    }
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startingscene() {
        
        FirstScene.text = self.scence1
  
        
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
