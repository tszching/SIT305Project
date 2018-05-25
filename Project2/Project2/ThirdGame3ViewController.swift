//
//  ThirdGame3ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 23/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class ThirdGame3ViewController: UIViewController {

    //Get shared application
    let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Score is displaying the latest score
        lblScore.text = String(delegate.score!)
        
        // Car button collected
        if stateLevel3.car {
            car.isHidden = true
            downBtn.isHidden = false
            year.text = "cable car"
        }
    }
    
    //All outlets
    @IBOutlet weak var car: UIButton!
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var year: UITextField!
    @IBOutlet weak var downBtn: UIButton!
    
    
    
    //All functions
    
    // Click car object methods
    @IBAction func carClick(_ sender: Any) {
        car.isHidden = true
        stateLevel3.car = true
        downBtn.isHidden = false
        
        //Score is adding new score then display latest Score
        delegate.score = delegate.score! + 10
        lblScore.text = String(delegate.score!)
    }
    
    // Check inputed value is correct or not
    @IBAction func yearField(sender: UITextField) {
        
        // Car button can collect when year.text is correct
        if sender.text! == "cable car" {
            car.isHidden = false
            
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
        year.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
