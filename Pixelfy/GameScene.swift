//
//  GameScene.swift
//  Pixelfy
//
//  Created by Mac on 4/10/19.
//  Copyright © 2019 nyu.edu. All rights reserved.
//
import SpriteKit
import GameplayKit

enum Enemies {
    case small
    case medium
}

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var upButton:SKSpriteNode?
    var downButton:SKSpriteNode?
    var leftButton:SKSpriteNode?
    var rightButton:SKSpriteNode?
    var aButton:SKSpriteNode?
    var bButton:SKSpriteNode?
    var startButton:SKSpriteNode?
    var player:SKSpriteNode?
    var scoreLabel: SKLabelNode!
    var moveCounter = 4
    var score = 0
    
    var trackArray: [SKSpriteNode]? = [SKSpriteNode]()
    var ledArray: [SKSpriteNode]? = [SKSpriteNode]()
    
    
    
    let playerCategory:UInt32 = 0x1 << 0
    let enemyCategory:UInt32 = 0x1 << 1
    
    //var led:SKSpriteNode?
    //var sprite:SKSpriteNode?
    
    var led1:SKSpriteNode?
    var led2:SKSpriteNode?
    var led3:SKSpriteNode?
    var led4:SKSpriteNode?
    var led5:SKSpriteNode?
    var led6:SKSpriteNode?
    var led7:SKSpriteNode?
    var led8:SKSpriteNode?
    var led9:SKSpriteNode?
    var led10:SKSpriteNode?
    var led11:SKSpriteNode?
    var led12:SKSpriteNode?
    var led13:SKSpriteNode?
    var led14:SKSpriteNode?
    var led15:SKSpriteNode?
    var led16:SKSpriteNode?
    
    
    
    
    
    
    
    override func didMove(to view: SKView) {
        
        self.physicsWorld.contactDelegate = self
        
        upButton = self.childNode(withName: "upButton") as? SKSpriteNode
        downButton = self.childNode(withName: "downButton") as? SKSpriteNode
        leftButton = self.childNode(withName: "leftButton") as? SKSpriteNode
        rightButton = self.childNode(withName: "rightButton") as? SKSpriteNode
        aButton = self.childNode(withName: "aButton") as? SKSpriteNode
        bButton = self.childNode(withName: "bButton") as? SKSpriteNode
        startButton = self.childNode(withName: "startButton") as? SKSpriteNode
        
        //player = self.childNode(withName: "player") as? SKSpriteNode
        
        makeGrid()
        
        makeTrack()
        player = self.childNode(withName: "player") as? SKSpriteNode
        player?.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 80, height: 80))
        player?.physicsBody?.categoryBitMask = playerCategory
        player?.physicsBody?.collisionBitMask = 0
        player?.physicsBody?.contactTestBitMask = enemyCategory
        player?.zPosition = 20
        
        
        
        //let str2 = String(score)
        //scoreLabel.text = str2
        
        
        self.run(SKAction.repeatForever(SKAction.sequence([SKAction.run{
            
            self.scrollDown()
            self.score = self.score + 1
        
            }, SKAction.wait(forDuration: 0.5)]))) //spawn per sec
        
        
        
        
        
        
        
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
                scrollDown()
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
        
        moveCounter += 1
        
        if moveCounter > 7 {
            moveLeft()
        }
        
    }
    
    func moveLeft () {
        
        let moveAction = SKAction.moveBy(x:-90, y:0, duration: 0)
        
        player?.run(moveAction)
        
        moveCounter -= 1
        
        if moveCounter < 0 {
            moveRight()
        }
        
    }
    
    func scrollDown(){
        
        let moveAction = SKAction.moveBy(x:0, y:-90, duration: 0)
       
        
        for i in ledArray!{
            
            i.zPosition = 19
            i.run(moveAction)
        }
        
        
        
    }
    
    
    func makeLed()-> SKSpriteNode{
        
        let testLed = SKSpriteNode(color: SKColor.cyan, size: CGSize(width: 85, height: 85))
        
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
                trackArray?.append(led)
                
            }
        }
        
        
        
    }
    
    
    func createEnemy (forTrack track:Int) -> SKSpriteNode? {
        let enemySprite = SKSpriteNode (color: SKColor.green, size: CGSize(width: 85, height: 85)) //initializing
        enemySprite.name = "ENEMY"
        
        guard let enemyPosition = trackArray?[track].position else {return nil}
        enemySprite.position.x = enemyPosition.x
        enemySprite.position.y = 570
        
        enemySprite.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 80, height: 80))
        enemySprite.physicsBody?.categoryBitMask = enemyCategory
        enemySprite.physicsBody?.collisionBitMask = 0
        
        
        //enemySprite.physicsBody?.velocity = CGVector(dx: 0, dy: -1)
        let moveAction = SKAction.moveBy(x:0, y:-90, duration: 1) //-90 units of space in 1 second
        enemySprite.run(moveAction)
        enemySprite.run(moveAction)
        enemySprite.run(moveAction)
        enemySprite.run(moveAction)
        enemySprite.run(moveAction)
        enemySprite.run(moveAction)
        enemySprite.run(moveAction)
        
        
        
        return enemySprite
    }
    
    
    
    
    func spawnEnemy(){
        
        for i in 1...7 { //for the 9 rows
            
            if let newEnemy = (createEnemy(forTrack: 0)){
                
                if(i>0){
                    self.addChild(newEnemy)
                }
            }
            if let newEnemy = (createEnemy(forTrack: 1)) {
                if(i>=1 && i<7){
                    self.addChild(newEnemy)
                }
            }
            if let newEnemy = (createEnemy(forTrack: 2)) {
                if(i>=3 && i<6){
                    self.addChild(newEnemy)
                }
            }
            if let newEnemy = (createEnemy(forTrack: 3)) {
                if(i>=4 && i<5){
                    self.addChild(newEnemy)
                }
            }
            /*
            if let newEnemy = (createEnemy(forTrack: 5)) {
                if(i>=1){
                    self.addChild(newEnemy)
                }
            }
            if let newEnemy = (createEnemy(forTrack: 6)) {
                if(i>=1){
                    self.addChild(newEnemy)
                }
            }
            if let newEnemy = (createEnemy(forTrack: 7)) {
                if(i>=1){
                    self.addChild(newEnemy)
                }
            }
            if let newEnemy = (createEnemy(forTrack: 8)) {
                if(i>=1){
                    self.addChild(newEnemy)
                }
            }
            */
            
            
            
            
            
            
            
            
            
            
        }
        self.enumerateChildNodes(withName: "ENEMY") { (node:SKNode, nil) in
            if    node.position.y < 0 {
                node.removeFromParent() //removes nodes after exiting the screen to reduce memory loss
            }
        }
    }
        
        
        /*
        for i in 1...9 { //for the 9 rows
            let number = Int.random(in: 0...9) //spawning at 11.11%
            if let newEnemy = (createEnemy(forTrack: i)) {
                if number == 1 {
                    self.addChild(newEnemy)
                }
            }
        }
        self.enumerateChildNodes(withName: "ENEMY") { (node:SKNode, nil) in
            if    node.position.y < 0 {
                node.removeFromParent() //removes nodes after exiting the screen to reduce memory loss
            }
        }
    }
    */
    
    
    
    
    
    func didBegin(_ contact: SKPhysicsContact) {
        var playerBody:SKPhysicsBody
        var otherBody:SKPhysicsBody
        
        if contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask {
            playerBody = contact.bodyA
            otherBody = contact.bodyB
        }else{
            playerBody = contact.bodyB
            otherBody = contact.bodyA
        }
        if playerBody.categoryBitMask == playerCategory && otherBody.categoryBitMask == enemyCategory {
            gameOver()
            
        }
    }
    
    func makeTrack(){
        
        
        led1 = self.childNode(withName: "led1") as? SKSpriteNode
        led2 = self.childNode(withName: "led2") as? SKSpriteNode
        led3 = self.childNode(withName: "led3") as? SKSpriteNode
        led4 = self.childNode(withName: "led4") as? SKSpriteNode
        led5 = self.childNode(withName: "led5") as? SKSpriteNode
        led6 = self.childNode(withName: "led6") as? SKSpriteNode
        led7 = self.childNode(withName: "led7") as? SKSpriteNode
        led8 = self.childNode(withName: "led8") as? SKSpriteNode
        led9 = self.childNode(withName: "led9") as? SKSpriteNode
        led10 = self.childNode(withName: "led10") as? SKSpriteNode
        led11 = self.childNode(withName: "led11") as? SKSpriteNode
        led12 = self.childNode(withName: "led12") as? SKSpriteNode
        led13 = self.childNode(withName: "led13") as? SKSpriteNode
        led14 = self.childNode(withName: "led14") as? SKSpriteNode
        led15 = self.childNode(withName: "led15") as? SKSpriteNode
        led16 = self.childNode(withName: "led16") as? SKSpriteNode
        
        ledArray?.append(led1!)
        ledArray?.append(led2!)
        ledArray?.append(led3!)
        ledArray?.append(led4!)
        ledArray?.append(led5!)
        ledArray?.append(led6!)
        ledArray?.append(led7!)
        ledArray?.append(led8!)
        ledArray?.append(led9!)
        ledArray?.append(led10!)
        ledArray?.append(led11!)
        ledArray?.append(led12!)
        ledArray?.append(led13!)
        ledArray?.append(led14!)
        ledArray?.append(led15!)
        ledArray?.append(led16!)
        
    }
    
    
    
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
    func gameOver() {
        
        
        let transition = SKTransition.fade(withDuration: 0)
        if let gameOverScene = SKScene(fileNamed: "GameOverScene") {
            gameOverScene.scaleMode = .aspectFit
            
            
            
            self.view?.presentScene(gameOverScene, transition: transition)
        }
        
    }
    
}
