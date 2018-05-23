//
//  ObjectStates.swift
//  Project2
//
//  Created by DARKEUNG on 5/22/18.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

// Structure the objects have been collected or not in Level 1
// False : Not Collected
// True : Collected
struct StateLevel1 {
    var flower = false
    var cow = false
    var ppl = false
    var windmill = false
}

// Structure the objects have been collected or not in Level 2
// False : Not Collected
// True : Collected
struct StateLevel2 {
    var wine = false
    var coffee = false
    var pasta = false
    var logo = false
}

// Init variable: Objects collected state for each Level
var stateLevel1 = StateLevel1(flower: false, cow: false, ppl: false, windmill: false)
var stateLevel2 = StateLevel2(wine: false, coffee: false, pasta: false, logo: false)
