//
//  GameScene.swift
//  Pixelfy
//
//  Created by Mac on 4/10/19.
//  Copyright © 2019 nyu.edu. All rights reserved.
//

import SpriteKit
import GameplayKit


class GameScene: SKScene {
    
    var upButton:SKSpriteNode?
    var downButton:SKSpriteNode?
    var leftButton:SKSpriteNode?
    var rightButton:SKSpriteNode?
    var aButton:SKSpriteNode?
    var bButton:SKSpriteNode?
    var startButton:SKSpriteNode?
    var player:SKSpriteNode?
    
    //var led:SKSpriteNode?
    //var sprite:SKSpriteNode?
    
    
    
    
    
    
    
    
    
    override func didMove(to view: SKView) {
        
        upButton = self.childNode(withName: "upButton") as? SKSpriteNode
        downButton = self.childNode(withName: "downButton") as? SKSpriteNode
        leftButton = self.childNode(withName: "leftButton") as? SKSpriteNode
        rightButton = self.childNode(withName: "rightButton") as? SKSpriteNode
        aButton = self.childNode(withName: "aButton") as? SKSpriteNode
        bButton = self.childNode(withName: "bButton") as? SKSpriteNode
        startButton = self.childNode(withName: "startButton") as? SKSpriteNode
    
        //player = self.childNode(withName: "player") as? SKSpriteNode
        
        makeGrid()
        player = self.childNode(withName: "player") as? SKSpriteNode
        player?.zPosition = 20
        
    
    
    
    
    
    
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.previousLocation(in: self)
            let node = self.nodes(at: location).first
            
            if node?.name == "rightButton" {
                moveRight()
                
            }
            else if node?.name == "leftButton" {
                moveLeft()
            }
            else if node?.name == "downButton" {
                
            }
            else if node?.name == "upButton" {
                
            }
            
            else if node?.name == "pause", let scene = self.scene {
                if scene.isPaused {
                    scene.isPaused = false
                }else {
                    scene.isPaused = true
                }
            }
        }
    }
    
    
    func moveRight () {
        
        let moveAction = SKAction.moveBy(x:90, y:0, duration: 0)
        
        player?.run(moveAction)
    
    }
    
    func moveLeft () {
        
        let moveAction = SKAction.moveBy(x:-90, y:0, duration: 0)
        
        player?.run(moveAction)
        
    }
    
    
    func makeLed()-> SKNode{
        
        let testLed = SKSpriteNode(color: SKColor.blue, size: CGSize(width: 85, height: 85))
        
        testLed.name = "lll"
        
        return testLed
        
    }
    
    
    
    func makeGrid(){
        
        let location = CGPoint(x: -316, y: -60)
        
        for i in 0...7 {
        
            let ledPosY = CGFloat(i) * (90) + location.y
            var ledPosition = CGPoint(x: location.x, y: ledPosY)
            
            
            for _ in 0...7 {
                
                let led = makeLed()
                led.position = ledPosition
                addChild(led)
                ledPosition = CGPoint(x: ledPosition.x + 90, y: ledPosY)
                
            }
        }
        
        
        
    }
        
        
        
        
        
    
    
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
    
    
    
}
