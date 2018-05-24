//
//  ThirdGameViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class ThirdGameViewController: UIViewController {

    //Get shared application
    let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Loading all gif images
        GifView.loadGif(name: "tourguy")
        
        //Score is displaying the latest score
        lblScore.text = String(delegate.score!)
        
       //Fisherman button collected
        if stateLevel3.fisherman {
            fisherman.isHidden = true
            downBtn.isHidden = false
            year.text = "1776"
        }
    }

    
    // All outlets
    @IBOutlet weak var GifView: UIImageView!
    @IBOutlet weak var fisherman: UIButton!
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var year: UITextField!
    @IBOutlet weak var downBtn: UIButton!
    
    
    
    //All functions
    
    // Check inputed value is correct or not
    @IBAction func yearField(sender: UITextField) {
        
        // Fisherman button can collect when year.text is correct
        if sender.text! == "1776" {
            fisherman.isHidden = false
        
        // Run gameOver() function otherwise
        } else {
            gameOver()
        }
    }
    
    // Click fisherman object methods
    @IBAction func fishermanClick(_ sender: Any) {
        fisherman.isHidden = true
        stateLevel3.fisherman = true
        downBtn.isHidden = false
        
        //Score is adding new score then display latest Score
        delegate.score = delegate.score! + 10
        lblScore.text = String(delegate.score!)
    }
    
    // Function for game over
    func gameOver() {
           //  Identify the storyboard ID and move to the GameOverviewcontroller screen when input is incorrect
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "GameOver") as! GameOverViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    // Keyboard dismiss when touch outside the textfield
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        year.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
