//
//  Scene2ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController {

    @IBOutlet weak var SecScene: UILabel!
    
    @IBOutlet weak var backB: UIButton!
    
    @IBOutlet weak var nextB: UIButton!
    
    
    
    let scene2 = "Beautiful!Beautiful!Beautiful! I can't believe what I'm just seeing now, the most romantic city on this planet Venezia. Watching the lights, enjoying the wind wish I can stay for this moment forever but here I am come to all the way along this jounery. Let me start to explore you Italy! hIl mio cuore è solo tuo"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        SecScene.alpha = 0
        backB.alpha = 0
        nextB.alpha = 0
        
        
        
        startingscene()
        // Do any additional setup after loading the view.
    }

    @IBAction func SecGame1(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SSG") as! SecondGameViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func backL(_ sender: Any) {
        dismiss (animated: true, completion: nil)
    }
    
    // animation fading in and out
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, animations: {
            self.SecScene.alpha = 0.9
        }) {(true) in
            self.showButtonBN()
        }
    }
    
    func showButtonBN(){
        UIView.animate(withDuration: 1, animations: {
            self.backB.alpha = 1
            self.nextB.alpha = 1
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func startingscene(){
        
        SecScene.text = self.scene2
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
