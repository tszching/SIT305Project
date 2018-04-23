# SIT305Project
Project progress

==Contributor==

Unit:SIT305 Android and Ios Mobile Programming

Name: Tsz Ching Kwok (Chloe)
Name: Jian Wang (Carson)

SID:215210314
SID:215326179

== Description==

This is a group project 'Global treasure explorer' in developing a single player - text-based Role-playing game(RPG) in Xcode where users experiences to direct the main character to defeating or interacting the auto-moving objects in each level. The key rules users need to follow are: choosing different situation in defeating or avoiding enemies and discovering the Four treasures in each level. Once the user has discovered each of the Four treasures, they can progress to the next level. The game will feature three countries, with a dedicated level for each country for the user to complete. 

The mobile game app development contains various functions such as menu options, game operation, location levels, achievement list and score record. As for further sub features hope to accomplish are the User Custom Setting and User Game Guideline.

They will be functioning in such as the Data Persistence, Networking and few APIs. 
The Purpose of this text-based RPG is to keep users entertainment and reducing their stress while they can learn the education in-game from the countries they explore. 


==Compile instructions==

1. Open 'Xcode' then go to 'File' on the top of Mac taskbar and press 'Open...'

2. Click on my folder 'SIT305Project-master' from where you downloaded > Project2 > Project2.xcodeproj > Open

3a. To turn on the iOS simulators and run the project, you need to: 
          a: Select a simulator from the top left where it has a little Xcode logo
          b: After choosing a simulator eg:  you pick iPhone 6
          c: Click on "Play" - a dark grey triangle on the top left.
          
          OR
3b. Go to Product on the top of Mac taskbar and press 'Run' (Command R)- auto selected simulator for you


4. Orientation of Screen: 
          After simulator has been loaded, my project will auto pop-up and you can simplify click (Command + left arrow) or (Command + right arrow) on keyboard to change the rotating of your virtual Iphone.


5. You can now exploring my game - "Global treasure explorer"


==Directory Structure==

Directory Structure is where the coding files,assets images folders and all other relevant folders located on the left listbar.


==Game Data & Important Code==

1. Expand the grey triangle with a blue document logo in Project2 
2. Expand the Project2 folder
3. You then see all the ViewController.swift files = Different Screens
4. You will also see the Assets.xcassets where I stored all my images that have beeen applied to my template - the storyboard
5. Some .mp3 files are for the Sounds effects and background music 

Important Code:

My ViewController.swift files which included:
-ViewController.swift is the Menu page where you select to go to another page
-AboutViewController.swift is about the Project Descirption.
-LevelViewController.swift is the level selection before the game starts.
-SettingViewController.swift is the setting of the game eg: sounds effects, background music and user guideline etc.
-StartGameViewController.swift is the first level of the game which you will need to click the button to do the navigated and try to check and collect the important 4 treasures. 
-StartGame2ViewController.swift is the enemies appear after when you choose to direct the role player to this page. it will given you the choice whether to escape/ battle the enemies.
-StartGame3ViewController.swift is collecting treasures and you will get some hints for the hiding treasures by some strangers.
-GameScene.swift is the for the animation function which still working in the process.
-SecondGameViewController.swift is the Second layer/level of the game.
-ThirdGameViewController.swift is the Third layer/level of the game. 


==Data Structure==

Level: 

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
    @IBAction func Game1(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SG") as! StartGameViewController
        self.present(vc, animated: true,completion: nil)
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
    

StartGame:

    @IBAction func Game2(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SG2") as! StartGame2ViewController
        self.present(vc, animated: true,completion: nil)
    }
    
StartGame2:

    // Variables
     var gameTimer : Timer?
    var gravity : UIGravityBehavior?
    var animator : UIDynamicAnimator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set timer to show snowflaks
        gameTimer = Timer.scheduledTimer(timeInterval: 1,
                                         target: self,
                                         selector: #selector(StartGame2ViewController.addenemy(_ :)), userInfo: nil, repeats: true)
        
        // Register an animator
        animator = UIDynamicAnimator(referenceView: self.view)
        gravity = UIGravityBehavior(items:[])
        
        //Gravity magnitude and direction
        let vector = CGVector(dx: 0.0, dy: 0.1)
        gravity?.gravityDirection = vector
        animator?.addBehavior(gravity!)
        // Do any additional setup after loading the view.
    }


    
    @objc func addenemy ( _ : Any) {
        
        //Pick a random x position for the balloon
        let xCoordinate = arc4random() % UInt32 (self.view.bounds.width)
        
        //Create a button, set Image, assign touchUpInside handler, add it to the view and gravity animator
        
        let btn = UIButton(frame: CGRect (x: Int(xCoordinate), y:60, width: 30, height : 30))
        btn.setImage(UIImage(named: "enemy2"), for: .normal)
        btn.addTarget(self, action: #selector(self.enemypopup(sender:)), for: .touchUpInside )
        self.view.addSubview(btn)
        
        gravity?.addItem( btn as UIView)
        
    }
    
    @objc func enemypopup (sender : UIButton) {
        
        sender.setImage(UIImage (named : "enemy1"), for: .normal)
        UIView.animate(withDuration: 0.4, animations:{sender.alpha = 0},
                       completion: {(true) in sender.removeFromSuperview()})
        
    }
    


About:

    @IBAction func backHome(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
Setting: 

import UIKit
import AVFoundation

class SettingViewController: UIViewController {

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
    
    @IBAction func backing(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    // Volume changes via slider function
    @IBAction func slider(_ sender: UISlider) {
        
        soundPlayer?.volume = sender.value
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

