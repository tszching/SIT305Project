//
//  ThirdGame2ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class ThirdGame2ViewController: UIViewController {

    //Get shared application
    let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Score is displaying the latest score
        lblScore.text = String(delegate.score!)
        
        // Gate button collected
        if stateLevel3.gate {
            gate.isHidden = true
            downBtn.isHidden = false
            year.text = "1937"
        }
    }
    
    // All outlets
    @IBOutlet weak var gate: UIButton!
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var year: UITextField!
    @IBOutlet weak var downBtn: UIButton!
    
    
    //All functions
    
    // Check inputed value is correct or not
    @IBAction func yearField(sender: UITextField) {
        
        // Gate button can collect when year.text is correct
        if sender.text! == "1937" {
            gate.isHidden = false
        
        // Go gameOver() function otherwise
        } else {
            gameOver()
        }
    }
    
    // Click gate object methods
    @IBAction func gateClick(_ sender: Any) {
        gate.isHidden = true
        stateLevel3.gate = true
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
