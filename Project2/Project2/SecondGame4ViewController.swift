//
//  SecondGame4ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 23/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class SecondGame4ViewController: UIViewController {

    //Get shared application
    let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Score is not 0 then display Score
        if delegate.score != 0 {
            lblScore.text = String(delegate.score!)
        }
    }

    //All outlets
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var congratulation: UIButton!

    
    
    //All functions
    
    // Click right answer and display next target
    @IBAction func rightAnswerClick(_ sender: Any) {
        congratulation.isHidden = false
        
    }
    
    
    @IBAction func gameOver(_ sender: Any) {
        //  Let this button identify the storyboard ID and move to the GameOverviewcontroller screen
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "GameOver") as! GameOverViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
