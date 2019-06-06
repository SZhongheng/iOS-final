//
//  GameHandler.swift
//  Pixelfy
//
//  Created by Mac on 5/5/19.
//  Copyright © 2019 nyu.edu. All rights reserved.
//

import Foundation

class GameHandler {
    //using singleton to save scores between different instances
    var score:Int
    var highScore:Int
    
    class var sharedInstance :GameHandler {
        struct Singleton {
            static let instance = GameHandler()
        }
        
        return Singleton.instance
    }
    init (){
        score = 0
        highScore = 0
        
        let userDefaults = UserDefaults.standard
        highScore = userDefaults.integer (forKey: "highScore")
    }
    
    func saveGameStats(){
        highScore = max (score, highScore)
        let userDefaults = UserDefaults.standard
        userDefaults.set(highScore, forKey: "highScore")
        userDefaults.synchronize()
        
    }
    
}
