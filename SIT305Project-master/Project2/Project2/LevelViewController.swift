//
//  LevelViewController.swift
//  Project2
//
//  Created by DARKEUNG on 20/4/2018.
//  Copyright © 2018 CHLOE KWOK. All rights reserved.
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
        let path = Bundle.main.path(forResource: "Music1", ofType:"mp3")
        let url = URL(fileURLWithPath: path!)
        
        do
        {
            try soundPlayer = AVAudioPlayer(contentsOf: url)
        }
        catch {print("file not availale")}
        
    }

    
    @IBAction func backH(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
