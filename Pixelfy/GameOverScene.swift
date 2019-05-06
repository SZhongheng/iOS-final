//
//  GameOverScene.swift
//  Pixelfy
//
//  Created by Mac on 5/5/19.
//  Copyright © 2019 nyu.edu. All rights reserved.
//

import Foundation
import SpriteKit


class GameOverScene: SKScene {
    
    static var score = 0
    //var scoreLabel: SKLabelNode!
    var playButton:SKSpriteNode?
    var gameScene:SKScene!
    var bestLabel:SKLabelNode?
    var currentLabel:SKLabelNode?
    
    
    override func didMove(to view: SKView) {
        
        
        playButton = self.childNode(withName: "playButton") as? SKSpriteNode
        bestLabel = self.childNode(withName: "highScore") as? SKLabelNode
        currentLabel = self.childNode(withName: "currentScore") as? SKLabelNode
        
        currentLabel?.text = "\(GameHandler.sharedInstance.score)"
        bestLabel?.text = "\(GameHandler.sharedInstance.highScore)"
        

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let touch = touches.first {
            let pos = touch.location(in: self)
            let node = self.atPoint(pos)
            
            if node == playButton {
                let transition = SKTransition.fade(withDuration: 0)
                gameScene = SKScene(fileNamed: "GameScene")
                gameScene.scaleMode = .aspectFit
                self.view?.presentScene(gameScene, transition: transition)
                
            }
        }
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
    
}
