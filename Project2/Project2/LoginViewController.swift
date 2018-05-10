//
//  LoginViewController.swift
//  Project2
//
//  Created by DARKEUNG on 10/5/2018.
//  Copyright © 2018 CHLOE KWOK. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func level(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LV") as! LevelViewController;
        self.present(vc, animated: true, completion: nil)
    }
    
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
