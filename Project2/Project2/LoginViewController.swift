//
//  LoginViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

//Global Variables
var username = ""

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //All Outlets
    @IBOutlet weak var acc: UITextField!
    
    //All functions
    @IBAction func savedata(_ sender: AnyObject) {

        // Displaying an Alert Popup Window (Login failed) if username is empty
        if (acc.text == "")
        {
            username = acc.text!
            
            //Alert message and title
            let alertController = UIAlertController(title: "Username", message: "Please create your username",
                                                    preferredStyle: .alert)
    
            // Prepare Alert message before passing data
            let yesAction = UIAlertAction(title: "Ok", style: .default) {(action) -> Void in print ("IT CANNOT BE EMPTY")}
            
            
        // Operates Warning Alert: Username is blank
            alertController.addAction(yesAction)
            self.present(alertController, animated: true, completion: nil)
        } else {
            username = acc.text!
            
            // Get shared appliaction
            if let delegate = UIApplication.shared.delegate as? AppDelegate {
                // Username
                delegate.userName = username
                // Score starts from 0
                delegate.score = 0
            }

        //  Let this button identify the storyboard ID and move to the Levelviewcontroller screen
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "LV") as! LevelViewController;
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    // Keyboard dismiss when touch outside the textfield
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        acc.resignFirstResponder()
    }
    
    // Connected to the Parents ViewController: Back to Menu - ViewController
    @IBAction func backM(_ sender: Any) {
        dismiss (animated: true, completion: nil)
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
