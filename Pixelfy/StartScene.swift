//
//  StartScene.swift
//  Pixelfy
//
//  Created by Mac on 5/2/19.
//  Copyright © 2019 nyu.edu. All rights reserved.
//


import SpriteKit



class StartScene: SKScene {
    
    
    var playButton:SKSpriteNode?
    var gameScene:SKScene!
    
  
    override func didMove(to view: SKView) {
        playButton = self.childNode(withName: "playButton") as? SKSpriteNode
        
        let background = SKSpriteNode(imageNamed: "pixelfyLaunchX")
         background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.zPosition = -1
        background.size = self.frame.size;
        //background.position = CGPoint(x: size.width/2, y: size.height/2)
        //background.anchorPoint = CGPoint(x: 0.5, y: 0.5) // default
        //background.scale
        //addChild(background)
        
  
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
