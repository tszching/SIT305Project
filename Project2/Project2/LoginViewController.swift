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
            
            let alertController = UIAlertController(title: "Username", message: "Please create your username",
                                                    preferredStyle: .alert)
    
            // Prepare Alert message before passing data
            let yesAction = UIAlertAction(title: "Ok", style: .default) {(action) -> Void in print ("IT CANNOT BE EMPTY")}
            
            
        // Operates Warning Alert: Username is blank
            alertController.addAction(yesAction)
            self.present(alertController, animated: true, completion: nil)
        } else {
            username = acc.text!
            
            if let delegate = UIApplication.shared.delegate as? AppDelegate {
                delegate.userName = username
                delegate.score = 0
            }
            
        
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "LV") as! LevelViewController;
            self.present(vc, animated: true, completion: nil)
        }
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
