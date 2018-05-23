//
//  LevelViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit
import AVFoundation


class LevelViewController: UIViewController {
    
    // Variables
    var soundPlayer: AVAudioPlayer?
    var elapsedTime: TimeInterval = 0
    
    
    // Do any additional setup after loading the view.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // The file URL
        
        let path = Bundle.main.path(forResource: "Music1", ofType:"mp3")
        let url = URL(fileURLWithPath: path!)
        
        //Set up the player
        do
        {
            try soundPlayer = AVAudioPlayer(contentsOf: url)
        }
        
            //catch the error if playback fails
        catch {print("file not availale")}
        
    }
    
    // All Outlets
    @IBOutlet weak var userlbl: UILabel!
    @IBOutlet weak var toItaly: UIButton!
    @IBOutlet weak var toUSA: UIButton!
    @IBOutlet weak var toEngland: UIButton!
    
    // Show the saved username from Login ViewController
    override func viewDidAppear(_ animated: Bool)
    {
        // Disable the button until user Score up to 40 
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            userlbl.text = delegate.userName
            if delegate.score! >= 40 {
                toItaly.isEnabled = true
            }
            if delegate.score! >= 80 {
                toUSA.isEnabled = true
            }
        }
    }
    
    /// Switching music player
    ///
    /// - Parameter sender:
    @IBAction func musicswitch(_ sender: UISwitch) {
        if sender.isOn == true
        {
            if soundPlayer != nil{
                soundPlayer!.currentTime = elapsedTime
                soundPlayer!.play()}
            
        }
        
        if sender.isOn == false
        {
            if soundPlayer != nil{
                soundPlayer!.stop()
                elapsedTime = 0}
        }
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
