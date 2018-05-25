//
//  ThirdGame4ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 23/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class ThirdGame4ViewController: UIViewController {

    // Get shared application
    let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Score is displaying the latest score
        lblScore.text = String(delegate.score!)
        
        // Burger button collected
        if stateLevel3.burger {
            burger.isHidden = true
            congratulation.isHidden = false
            answer.text = "yerba buena"
        }
    }
    
    // All outlets
    @IBOutlet weak var burger: UIButton!
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var answer: UITextField!
    @IBOutlet weak var congratulation: UIButton!
    
    
    //All functions
    
    // Click burger object methods
    @IBAction func burgerClick(_ sender: Any) {
        burger.isHidden = true
        stateLevel3.burger = true
        congratulation.isHidden = false
        
        //Score is adding new score then display latest Score
        delegate.score = delegate.score! + 10
        lblScore.text = String(delegate.score!)
    }
    
    // Check inputed value is correct or not
    @IBAction func answerField(sender: UITextField) {
        
        // Burger button can collect when year.text is correct
        if sender.text! == "yerba buena" {
            burger.isHidden = false
            
        // Go gameOver() function otherwise
        } else {
            gameOver()
        }
    }
    
   // Function for game over
    func gameOver() {
        //  Identify the storyboard ID and move to the GameOverviewcontroller screen when input is incorrect
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "GameOver") as! GameOverViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    // Keyboard dismiss when touch outside the textfield
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        answer.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
