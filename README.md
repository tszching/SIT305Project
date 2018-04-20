# SIT305Project
Project progress

==Contributor==

Unit:SIT305 Android and Ios Mobile Programming

Name: Tsz Ching Kwok (Chloe)

SID:215210314

== Description==

This is an individual project 'Global treasure explorer' in developing a single player - text-based Role-playing game(RPG) in Xcode where users experiences to direct the main character to defeating or interacting the auto-moving objects in each level. The key rules users need to follow are: choosing different situation in defeating or avoiding enemies and discovering the Four treasures in each level. Once the user has discovered each of the Four treasures, they can progress to the next level. The game will feature three countries, with a dedicated level for each country for the user to complete. 

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
