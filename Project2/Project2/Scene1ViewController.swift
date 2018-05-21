//
//  Scene1ViewController.swift
//  Project2
//
//  Created by DARKEUNG on 11/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit


class Scene1ViewController: UIViewController {
    
    @IBOutlet weak var data: UILabel!
    
    
    // Connected to the Parents ViewController: Back to Level ViewController
    @IBAction func backtoL(_ sender: Any) {
        
        dismiss (animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func toGame1(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SG") as! StartGameViewController; self.present(vc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let fileName = "Test"
        let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        let fileURL = DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension("txt")
        
        print("File Path \(fileURL.path)")
        
        //Try to write the created file from fileURL
        
        let writeString = "Write this text to the file in Swift"
        do {
            // Write to the file
            try writeString.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8)
            
            // Print out "error" messages when failing to write the created file
        } catch let error as NSError {
            print("failed to write to URL")
            print(error)
        }
        
        
        //Read the created file
        //Varabile - Store the file contents we read from
        var readString = ""
        
        
        do {
            data.text = readString
            readString = try String(contentsOf: fileURL)
            
            
        } catch let error as NSError {
            print("Failed to read file")
            print(error)
        }
        
        print("Contents of the file \(readString)")
        
        //Read the text file
        let fileURLProject = Bundle.main.path(forResource: "projectdata1", ofType: "txt")
        
        
        //Varabile
        var readStringProject = ""
        do
        {
            data.text = readStringProject
            readStringProject = try String(contentsOfFile: fileURLProject!, encoding: String.Encoding.utf8)
            
        } catch let error as NSError {
            print("Failed to read from project")
            print(error)
        }
        print (data.text = readStringProject)
        
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
