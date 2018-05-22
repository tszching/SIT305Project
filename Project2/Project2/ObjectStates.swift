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

// Init variable: Objects collected state in Level 1
var stateLevel1 = StateLevel1(flower: false, cow: false, ppl: false, windmill: false)
