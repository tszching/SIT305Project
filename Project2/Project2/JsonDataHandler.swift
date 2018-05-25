//
//  JsonDataHandler.swift
//  Project2
//
//  Created by DARKEUNG on 5/22/18.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import Foundation

// Present game result: users and their score
struct UserInfo: Codable {
    
    //Variables
    var userName: String
    var score: Int
}

//Game history data
struct History: Codable {
    
    //Variables
    var data: [UserInfo]
}

//Collected Object data
struct ObjectJson: Codable {
    var name: String
    var image: String
    var detail: String
}

// Read json data from Data.json file
func readData() -> History? {
    if let path = Bundle.main.path(forResource: "Data", ofType: "json") {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let decoder = JSONDecoder()
            let history = try? decoder.decode(History.self, from: data)
            return history
        } catch {
            // catch error
            return nil
        }
    }
    return nil
}

// Rewrite all game history with lastest result as username and score
func writeData(data: UserInfo) {
    
    //Variables
    var history = readData()
    
    if history == nil {
        history = History(data: [data])
    } else {
        
        // Insert game history
        history?.data.append(data)

    }
    
    // Write game history to Data.json file
    if let encodedData = try? JSONEncoder().encode(history) {
        let path = Bundle.main.path(forResource: "Data", ofType: "json")
        let pathAsURL = URL(fileURLWithPath: path!)
        do {
            try encodedData.write(to: pathAsURL)
        }
        catch {
            print("Failed to write JSON data: \(error.localizedDescription)")
        }
    }
}

//Write game score with username
func writeScore(name: String, score: Int) {
    
        let data = UserInfo(userName: name, score: score)
    
        writeData(data: data)
    
}

//Get high score with username
func getHighScore(name: String) -> Int {
    
    var highScore = 0
    let history = readData()
    
    if history != nil {
        // find high score
        for userInfo in history!.data {
            if userInfo.userName == name {
                highScore = userInfo.score
                break
            }
        }
        
    }
    return highScore
}

//Read object data from detail.json
func getObjectData() -> [ObjectJson]? {
    if let path = Bundle.main.path(forResource: "detail", ofType: "json") {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let decoder = JSONDecoder()
            let json = try decoder.decode([ObjectJson].self, from: data)
            return json
        } catch let err {
            // catch error
            print(err)
            return nil
        }
    }
    
    return nil
}
