# SIT305Project
Project progress

==Contributor==

Unit:SIT305 Android and Ios Mobile Programming

Name: Tsz Ching Kwok (Chloe)
Name: Jian Wang (Carson)

SID:215210314
SID:215326179

# Henry comments 27/April
- This file needs directory explanation so I know where to find stuff. I won't be looking in an IDE. I'll be looking at files on a hard drive.
- Your changelog needs a lot of work. Missing tasks that were complete, hasn't said who did what task each day of work, etc.
- Your data hasn't progressed enough. You need to get to this very quickly, as you can't start building your game until you can at least load the levels/world of your game. So work on getting loading working (from data files) asap.
- There are many repeated files (readme, project directories, etc), so they overlap. Please delete / merge irrelevant files.


# == Description==

This is a group project 'Global treasure explorer' in developing a single player - text-based Role-playing game(RPG) in Xcode where users experiences to direct the main character to defeating or interacting the auto-moving objects in each level. The key rules users need to follow are: choosing different situation in defeating or avoiding enemies and discovering the Four treasures in each level. Once the user has discovered each of the Four treasures, they can progress to the next level. The game will feature three countries with three dedicated levels for the user to complete. 

The mobile game app development contains various functions such as menu options, game operation, location levels, achievement list and score record. As for further sub features hope to accomplish are the score, music and achievement.

They will be functioning in such as the using external data saving and displaying dat
The Purpose of this text-based RPG is to keep users entertainment and reducing their stress while they can learn the education in-game from the countries they explore. 


# ==Compile instructions==

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


# ==Directory Structure==

Directory Structure is where the coding files,assets images folders and all other relevant folders located on the left listbar.


# ==Game Data & Important Code==

1. Expand the grey triangle with a blue document logo in Project2 
2. Expand the Project2 folder
3. You then see all the ViewController.swift files = Different Screens
4. You will also see the Assets.xcassets where I stored all my images that have beeen applied to my template - the storyboard
5. Some .mp3 files are for the Sounds effects and background music 

Important Code:

My ViewController.swift files which included:
-JsonDataHandler.swift to read and write and update the game data through data.json 
-ObjectStates.swift to temporarily data store from AppDelegate for all the target objects.
-AchievementCell.swift show all taget objects data from detail.json
-Detail.json for the struture data on achievement screen
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

# ==Data Directory==
Project2 > Project2 > Data (All the json and text datas is within this folder)

# ==Data Structure==

Detail.json:

[
	{
		"name": "Tulips",
		"image": "tulip",
		"detail": "Tulips can live for many years in the proper climate. In good conditions, some species of tulips live for 10-20 years."
	},
	{
		"name": "Lakenvelder cattle",
		"image": "cow",
		"detail": "The Dutch Belted is a dairy cattle breed named for its country of origin and its striking color pattern, black with a bright white belt around its middle."
	},
	{
		"name": "Dutch",
		"image": "hlppl",
		"detail": "Statistically, Dutch are among the tallest people in Europe. Eye contact and criticism are to be expected when chatting with a Dutch."
	},
	{
		"name": "Windmills",
		"image": "hl1",
		"detail": "There is a National Windmill Day, not only in Netherlands."
	},
	{
		"name": "Pizza",
		"image": "italylogo",
		"detail": "The first pizza was prepared for King Umberto I and Queen Margherita of Italy on their visit to Naples. And thus, the Margherita pizza was born."
	},
	{
		"name": "Wine",
		"image": "wine",
		"detail": "Italy has the largest wine producing country in the world. Quite often wines take the name of the areas or town where the grapes are grown."
	},
	{
		"name": "Pasta",
		"image": "pasta",
		"detail": "How many shapes of pasta do you think there are? 5? 10? 25? How about 600? Yep, that's right.There are 600 official pasta shapes produced throughout the world."
	},
	{
		"name": "Caffe",
		"image": "coffee",
		"detail": "Most Italians drink their caffe at a bar (not the alcoholic kind), standing up, usually before 9 am. Prices increase if you sit down at a table."
	},
	{
		"name": "Cable car",
		"image": "car",
		"detail": "Cable cars are different than trolleys or trams. They run on steel rails with a slot between the tracks where a cable cars grip onto a constantly running cable."
	},
	{
		"name": "Hamburgers",
		"image": "burger",
		"detail": "In 1921, the first fast food restaurant was opened which sold hamburgers for just 5 cents!"
	},
	{
		"name": "Fisherman's Wharf",
		"image": "sanlogo",
		"detail": "Fisherman's' Wharf is estimated to host no less than 12 million visitors annually by far the most frequently visited place in San Francisco."
	},
	{
		"name": "Golden Gate Bridge",
		"image": "gate",
		"detail": "It took 4 years to bulid! Construction on the bridge began in January of 1933, right in the middle of the Great Depression."
	}
]


projectdata1,2,3 .txt:

  One day, I heard someone
 said: if you are alive,
 you cannot be bored in San
 Francisco.
  If you are not alive,
 San Francisco will bring
 you to life.

  Why? San Francisco city
 is where people are never
 more abroad than when
 they are at home.

  This will be my very last
 stop, then back the reality
 WORK! I'll enjoy every last
 moment!!!!

-----------------------------------
  Beautiful!Beautiful!Beautiful! 
 I can't believe what I'm seeing 
 now, the most romantic city on 
 this planet Venezia.
 
  Watching city of lights, 
 enjoying the wind brushed my 
 cheek, wish I can stay for 
 pause this moment for a while
 but here I am come to all the 
 way along this journey.
 
  Let me start to explore you 
 Italy! hIl mio cuore è solo tuo!
-------------------------------------
  Wow I have finally arrived to this
 beautiful land in Holland.

  This will be an amazing journey,
 I can't wait to exploring things.

  Hopefully, this journey will have
 full of excited experience
 but it is a happy trip if
 I will be only meeting the good
 people within this journey...

  Now! Let me take a look at
 what's up there!!

