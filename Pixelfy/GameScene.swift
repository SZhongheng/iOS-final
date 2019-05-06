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
    var timeLabel: SKLabelNode?
    var scoreLabel: SKLabelNode!
    var moveCounter = 4
    //var score = 0
    var currentScore:Int = 0{
        didSet{
            self.timeLabel?.text = "SCORE: \(self.currentScore)"
            GameHandler.sharedInstance.score = currentScore
            
        }
        
    }
    
    var pause: SKSpriteNode?
    
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
    var led17:SKSpriteNode?
    var led18:SKSpriteNode?
    var led19:SKSpriteNode?
    var led20:SKSpriteNode?
    var led21:SKSpriteNode?
    var led22:SKSpriteNode?
    var led23:SKSpriteNode?
    var led24:SKSpriteNode?
    var led25:SKSpriteNode?
    var led26:SKSpriteNode?
    var led27:SKSpriteNode?
    var led28:SKSpriteNode?
    var led29:SKSpriteNode?
    var led30:SKSpriteNode?
    var led31:SKSpriteNode?
    var led32:SKSpriteNode?
    var led33:SKSpriteNode?
    var led34:SKSpriteNode?
    var led35:SKSpriteNode?
    var led36:SKSpriteNode?
    var led37:SKSpriteNode?
    var led38:SKSpriteNode?
    var led39:SKSpriteNode?
    var led40:SKSpriteNode?
    var led41:SKSpriteNode?
    var led42:SKSpriteNode?
    var led43:SKSpriteNode?
    var led44:SKSpriteNode?
    var led45:SKSpriteNode?
    var led46:SKSpriteNode?
    var led47:SKSpriteNode?
    var led48:SKSpriteNode?
    var led49:SKSpriteNode?
    var led50:SKSpriteNode?
    var led51:SKSpriteNode?
    var led52:SKSpriteNode?
    var led53:SKSpriteNode?
    var led54:SKSpriteNode?
    var led55:SKSpriteNode?
    var led56:SKSpriteNode?
    var led57:SKSpriteNode?
    var led58:SKSpriteNode?
    var led59:SKSpriteNode?
    var led60:SKSpriteNode?
    var led61:SKSpriteNode?
    var led62:SKSpriteNode?
    var led63:SKSpriteNode?
    var led64:SKSpriteNode?
    var led65:SKSpriteNode?
    var led66:SKSpriteNode?
    var led67:SKSpriteNode?
    var led68:SKSpriteNode?
    var led69:SKSpriteNode?
    var led70:SKSpriteNode?
    var led71:SKSpriteNode?
    var led72:SKSpriteNode?
    var led73:SKSpriteNode?
    var led74:SKSpriteNode?
    var led75:SKSpriteNode?
    var led76:SKSpriteNode?
    var led77:SKSpriteNode?
    var led78:SKSpriteNode?
    var led79:SKSpriteNode?
    var led80:SKSpriteNode?
    var led81:SKSpriteNode?
    var led82:SKSpriteNode?
    var led83:SKSpriteNode?
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didMove(to view: SKView) {
        
        self.physicsWorld.contactDelegate = self
        
        createHUD()
        launchTime()
        
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
            
            //self.spawnEnemy()
            
            self.scrollDown()
            //self.score = self.score + 1
            
            //if(self.led26?.position.y == -149.5){
                
                //self.moveTrackBackUp()
                
            //}
            
        
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
    
    func createHUD() {
        pause = self.childNode(withName: "pause") as? SKSpriteNode
        timeLabel = self.childNode(withName: "score") as? SKLabelNode
    }
    
    func launchTime(){
        let timeAction = SKAction.repeatForever(SKAction.sequence([SKAction.run ({
            self.currentScore += 1
        }),SKAction.wait (forDuration: 1)]))
        timeLabel?.run(timeAction)
        
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
        
        self.run(SKAction.repeatForever(SKAction.sequence([SKAction.run{ //for the 9 rows
            let number = Int.random(in: 0...3) //spawning at 11.11%
            //if let newEnemy = (createEnemy(forTrack: i)) {
                if number == 1 {
                    self.makeTrack()
                }
            //}
        }, SKAction.wait(forDuration: 0.5)])))
        
        
        
        
        /*
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
            
            
            
            
            
        
        self.enumerateChildNodes(withName: "ENEMY") { (node:SKNode, nil) in
            if    node.position.y < 0 {
                node.removeFromParent() //removes nodes after exiting the screen to reduce memory loss
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
 
 */
    }
 
    
    
    
    
    
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
        led1?.physicsBody?.categoryBitMask = enemyCategory
        led1?.physicsBody?.collisionBitMask = 0
        
        
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
        led17 = self.childNode(withName: "led17") as? SKSpriteNode
        led18 = self.childNode(withName: "led18") as? SKSpriteNode
        led19 = self.childNode(withName: "led19") as? SKSpriteNode
        led20 = self.childNode(withName: "led20") as? SKSpriteNode
        led21 = self.childNode(withName: "led21") as? SKSpriteNode
        led22 = self.childNode(withName: "led22") as? SKSpriteNode
        led23 = self.childNode(withName: "led23") as? SKSpriteNode
        led24 = self.childNode(withName: "led24") as? SKSpriteNode
        led25 = self.childNode(withName: "led25") as? SKSpriteNode
        led26 = self.childNode(withName: "led26") as? SKSpriteNode
        led27 = self.childNode(withName: "led27") as? SKSpriteNode
        led28 = self.childNode(withName: "led28") as? SKSpriteNode
        led29 = self.childNode(withName: "led29") as? SKSpriteNode
        led30 = self.childNode(withName: "led30") as? SKSpriteNode
        led31 = self.childNode(withName: "led31") as? SKSpriteNode
        led32 = self.childNode(withName: "led32") as? SKSpriteNode
        led33 = self.childNode(withName: "led33") as? SKSpriteNode
        led34 = self.childNode(withName: "led34") as? SKSpriteNode
        led35 = self.childNode(withName: "led35") as? SKSpriteNode
        led36 = self.childNode(withName: "led36") as? SKSpriteNode
        led37 = self.childNode(withName: "led37") as? SKSpriteNode
        led38 = self.childNode(withName: "led38") as? SKSpriteNode
        led39 = self.childNode(withName: "led39") as? SKSpriteNode
        led40 = self.childNode(withName: "led40") as? SKSpriteNode
        led41 = self.childNode(withName: "led41") as? SKSpriteNode
        led42 = self.childNode(withName: "led42") as? SKSpriteNode
        led43 = self.childNode(withName: "led43") as? SKSpriteNode
        led44 = self.childNode(withName: "led44") as? SKSpriteNode
        led45 = self.childNode(withName: "led45") as? SKSpriteNode
        led46 = self.childNode(withName: "led46") as? SKSpriteNode
        led47 = self.childNode(withName: "led47") as? SKSpriteNode
        led48 = self.childNode(withName: "led48") as? SKSpriteNode
        led49 = self.childNode(withName: "led49") as? SKSpriteNode
        led50 = self.childNode(withName: "led50") as? SKSpriteNode
        led51 = self.childNode(withName: "led51") as? SKSpriteNode
        led52 = self.childNode(withName: "led52") as? SKSpriteNode
        led53 = self.childNode(withName: "led53") as? SKSpriteNode
        led54 = self.childNode(withName: "led54") as? SKSpriteNode
        led55 = self.childNode(withName: "led55") as? SKSpriteNode
        led56 = self.childNode(withName: "led56") as? SKSpriteNode
        led57 = self.childNode(withName: "led57") as? SKSpriteNode
        led58 = self.childNode(withName: "led58") as? SKSpriteNode
        led59 = self.childNode(withName: "led59") as? SKSpriteNode
        led60 = self.childNode(withName: "led60") as? SKSpriteNode
        led61 = self.childNode(withName: "led61") as? SKSpriteNode
        led62 = self.childNode(withName: "led62") as? SKSpriteNode
        led63 = self.childNode(withName: "led63") as? SKSpriteNode
        led64 = self.childNode(withName: "led64") as? SKSpriteNode
        led65 = self.childNode(withName: "led65") as? SKSpriteNode
        led66 = self.childNode(withName: "led66") as? SKSpriteNode
        led67 = self.childNode(withName: "led67") as? SKSpriteNode
        led68 = self.childNode(withName: "led68") as? SKSpriteNode
        led69 = self.childNode(withName: "led69") as? SKSpriteNode
        led70 = self.childNode(withName: "led70") as? SKSpriteNode
        led71 = self.childNode(withName: "led71") as? SKSpriteNode
        led72 = self.childNode(withName: "led72") as? SKSpriteNode
        led73 = self.childNode(withName: "led73") as? SKSpriteNode
        led74 = self.childNode(withName: "led74") as? SKSpriteNode
        //led75 = self.childNode(withName: "led75") as? SKSpriteNode
        led76 = self.childNode(withName: "led76") as? SKSpriteNode
        led77 = self.childNode(withName: "led77") as? SKSpriteNode
        led78 = self.childNode(withName: "led78") as? SKSpriteNode
        led79 = self.childNode(withName: "led79") as? SKSpriteNode
        led80 = self.childNode(withName: "led80") as? SKSpriteNode
        led81 = self.childNode(withName: "led81") as? SKSpriteNode
        led82 = self.childNode(withName: "led82") as? SKSpriteNode
        led83 = self.childNode(withName: "led83") as? SKSpriteNode
        
        
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
        ledArray?.append(led17!)
        ledArray?.append(led18!)
        ledArray?.append(led19!)
        ledArray?.append(led20!)
        ledArray?.append(led21!)
        ledArray?.append(led22!)
        ledArray?.append(led23!)
        ledArray?.append(led24!)
        ledArray?.append(led25!)
        ledArray?.append(led26!)
        ledArray?.append(led27!)
        ledArray?.append(led28!)
        ledArray?.append(led29!)
        ledArray?.append(led30!)
        ledArray?.append(led31!)
        ledArray?.append(led32!)
        ledArray?.append(led33!)
        ledArray?.append(led34!)
        ledArray?.append(led35!)
        ledArray?.append(led36!)
        ledArray?.append(led37!)
        ledArray?.append(led38!)
        ledArray?.append(led39!)
        ledArray?.append(led40!)
        ledArray?.append(led41!)
        ledArray?.append(led42!)
        ledArray?.append(led43!)
        ledArray?.append(led44!)
        ledArray?.append(led45!)
        ledArray?.append(led46!)
        ledArray?.append(led47!)
        ledArray?.append(led48!)
        ledArray?.append(led49!)
        ledArray?.append(led50!)
        ledArray?.append(led51!)
        ledArray?.append(led52!)
        ledArray?.append(led53!)
        ledArray?.append(led54!)
        ledArray?.append(led55!)
        ledArray?.append(led56!)
        ledArray?.append(led57!)
        ledArray?.append(led58!)
        ledArray?.append(led59!)
        ledArray?.append(led60!)
        ledArray?.append(led61!)
        ledArray?.append(led62!)
        ledArray?.append(led63!)
        ledArray?.append(led64!)
        ledArray?.append(led65!)
        ledArray?.append(led66!)
        ledArray?.append(led67!)
        ledArray?.append(led68!)
        ledArray?.append(led69!)
        ledArray?.append(led70!)
        ledArray?.append(led71!)
        ledArray?.append(led72!)
        ledArray?.append(led73!)
        ledArray?.append(led74!)
        //ledArray?.append(led75!)
        ledArray?.append(led76!)
        ledArray?.append(led77!)
        ledArray?.append(led78!)
        ledArray?.append(led79!)
        ledArray?.append(led80!)
        ledArray?.append(led81!)
        ledArray?.append(led82!)
        ledArray?.append(led83!)
        
        
    }
    
    func moveTrackBackUp(){
        
        for i in ledArray!{
            
            i.position.y = i.position.y + 1980;
            
            
        }
        
        
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
