//
//  StartGame3ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class StartGame3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //loading all Gif images
        GifView.loadGif(name: "try")
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var GifView: UIImageView!
    @IBAction func Game4(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SG4") as! StartGame4ViewController; self.present(vc, animated: true,completion: nil)
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
