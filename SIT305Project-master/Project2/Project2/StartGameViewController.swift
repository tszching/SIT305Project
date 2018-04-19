//
//  StartGameViewController.swift
//  Project2
//
//  Created by CHLOE KWOK on 19/4/18.
//  Copyright © 2018 CHLOE KWOK. All rights reserved.
//

import UIKit

class StartGameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func Game2(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SG2") as! StartGame2ViewController
        self.present(vc, animated: true,completion: nil)
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
