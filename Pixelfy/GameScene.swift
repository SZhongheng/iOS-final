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
            
        }//setting up game score using singleton
        
    }
    
    var pause: SKSpriteNode?
    
    var trackArray: [SKSpriteNode]? = [SKSpriteNode]()
    var ledArray: [SKSpriteNode]? = [SKSpriteNode]()

    
    
    
    let playerCategory:UInt32 = 0x1 << 0 //player bitmask
    let enemyCategory:UInt32 = 0x1 << 1 //enemy bitmask
    
    //var led:SKSpriteNode?
    //var sprite:SKSpriteNode?
    
    

   /* var led1:SKSpriteNode?
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
    //var led75:SKSpriteNode?
    var led76:SKSpriteNode?
    var led77:SKSpriteNode?
    var led78:SKSpriteNode?
    var led79:SKSpriteNode?
    var led80:SKSpriteNode?
    var led81:SKSpriteNode?
    var led82:SKSpriteNode?
    var led83:SKSpriteNode?
    
    var led84:SKSpriteNode?
    var led85:SKSpriteNode?
    var led86:SKSpriteNode?
    var led87:SKSpriteNode?
    var led88:SKSpriteNode?
    var led89:SKSpriteNode?
    var led90:SKSpriteNode?
    var led91:SKSpriteNode?
    var led92:SKSpriteNode?
    var led93:SKSpriteNode?
    var led94:SKSpriteNode?
    var led95:SKSpriteNode?
    var led96:SKSpriteNode?
    var led97:SKSpriteNode?
    var led98:SKSpriteNode?
    var led99:SKSpriteNode?
    var led100:SKSpriteNode?
    var led101:SKSpriteNode?
    var led102:SKSpriteNode?
    var led103:SKSpriteNode?
    var led104:SKSpriteNode?
    var led105:SKSpriteNode?
    var led106:SKSpriteNode?
    var led107:SKSpriteNode?
    var led108:SKSpriteNode?
    var led109:SKSpriteNode?
    var led110:SKSpriteNode?
    var led111:SKSpriteNode?
    var led112:SKSpriteNode?
    var led113:SKSpriteNode?
    var led114:SKSpriteNode?
    var led115:SKSpriteNode?
    var led116:SKSpriteNode?
    var led117:SKSpriteNode?
    var led118:SKSpriteNode?
    var led119:SKSpriteNode?
    var led120:SKSpriteNode?
    var led121:SKSpriteNode?
    var led122:SKSpriteNode?
    var led123:SKSpriteNode?
    var led124:SKSpriteNode?
    var led125:SKSpriteNode?
    var led126:SKSpriteNode?
    var led127:SKSpriteNode?
    var led128:SKSpriteNode?
    var led129:SKSpriteNode?
    var led130:SKSpriteNode?
    var led131:SKSpriteNode?
    var led132:SKSpriteNode?
    var led133:SKSpriteNode?
    var led134:SKSpriteNode?
    var led135:SKSpriteNode?
    var led136:SKSpriteNode?
    var led137:SKSpriteNode?
    var led138:SKSpriteNode?
    var led139:SKSpriteNode?
    var led140:SKSpriteNode?
    var led141:SKSpriteNode?
    var led142:SKSpriteNode?
    var led143:SKSpriteNode?
    var led144:SKSpriteNode?
    var led145:SKSpriteNode?
    var led146:SKSpriteNode?
    var led147:SKSpriteNode?
    var led148:SKSpriteNode?
    var led149:SKSpriteNode?
    var led150:SKSpriteNode?
    var led151:SKSpriteNode?
    var led152:SKSpriteNode?
    var led153:SKSpriteNode?
    var led154:SKSpriteNode?
    var led155:SKSpriteNode?
    var led156:SKSpriteNode?
    var led157:SKSpriteNode?
    var led158:SKSpriteNode?
    var led159:SKSpriteNode?
    var led160:SKSpriteNode?
    var led161:SKSpriteNode?
    var led162:SKSpriteNode?
    var led163:SKSpriteNode?
    var led164:SKSpriteNode?
    var led165:SKSpriteNode?
    var led166:SKSpriteNode?
    var led167:SKSpriteNode?
    var led168:SKSpriteNode?
    var led169:SKSpriteNode?
    var led170:SKSpriteNode?
    var led171:SKSpriteNode?
    var led172:SKSpriteNode?
    var led173:SKSpriteNode?
    var led174:SKSpriteNode?
    var led175:SKSpriteNode?
    var led176:SKSpriteNode?
    var led177:SKSpriteNode?
    var led178:SKSpriteNode?
    var led179:SKSpriteNode?
    var led180:SKSpriteNode?
    var led181:SKSpriteNode?
    var led182:SKSpriteNode?
    var led183:SKSpriteNode?
    var led184:SKSpriteNode?
    var led185:SKSpriteNode?
    var led186:SKSpriteNode?
    var led187:SKSpriteNode?
    var led188:SKSpriteNode?
    var led189:SKSpriteNode?
    var led190:SKSpriteNode?
    var led191:SKSpriteNode?
    var led192:SKSpriteNode?
    var led193:SKSpriteNode?
    var led194:SKSpriteNode?
    var led195:SKSpriteNode?
    var led196:SKSpriteNode?
    var led197:SKSpriteNode?
    var led198:SKSpriteNode?
    var led199:SKSpriteNode?
    var led200:SKSpriteNode?
    
    var led201:SKSpriteNode?
    var led202:SKSpriteNode?
    var led203:SKSpriteNode?
    var led204:SKSpriteNode?
    var led205:SKSpriteNode?
    var led206:SKSpriteNode?
    var led207:SKSpriteNode?
    var led208:SKSpriteNode?
    var led209:SKSpriteNode?
    var led210:SKSpriteNode?
    var led211:SKSpriteNode?
    var led212:SKSpriteNode?
    var led213:SKSpriteNode?
    var led214:SKSpriteNode?
    var led215:SKSpriteNode?
    var led216:SKSpriteNode?
    var led217:SKSpriteNode?
    var led218:SKSpriteNode?
    var led219:SKSpriteNode?
    var led220:SKSpriteNode?
    var led221:SKSpriteNode?
    var led222:SKSpriteNode?
    var led223:SKSpriteNode?
    var led224:SKSpriteNode?
    var led225:SKSpriteNode?
    var led226:SKSpriteNode?
    var led227:SKSpriteNode?
    var led228:SKSpriteNode?
    var led229:SKSpriteNode?
    var led230:SKSpriteNode?
    var led231:SKSpriteNode?
    var led232:SKSpriteNode?
    var led233:SKSpriteNode?
    var led234:SKSpriteNode?
    var led235:SKSpriteNode?
    var led236:SKSpriteNode?
    var led237:SKSpriteNode?
    var led238:SKSpriteNode?
    var led239:SKSpriteNode?
    var led240:SKSpriteNode?
    var led241:SKSpriteNode?
    var led242:SKSpriteNode?
    var led243:SKSpriteNode?
    var led244:SKSpriteNode?
    var led245:SKSpriteNode?
    var led246:SKSpriteNode?
    var led247:SKSpriteNode?
    var led248:SKSpriteNode?
    var led249:SKSpriteNode?
    var led250:SKSpriteNode?
    var led251:SKSpriteNode?
    var led252:SKSpriteNode?
    var led253:SKSpriteNode?
    var led254:SKSpriteNode?
    var led255:SKSpriteNode?
    var led256:SKSpriteNode?
    var led257:SKSpriteNode?
    var led258:SKSpriteNode?
    var led259:SKSpriteNode?
    var led260:SKSpriteNode?
    var led261:SKSpriteNode?
    var led262:SKSpriteNode?
    var led263:SKSpriteNode?
    
    var led264:SKSpriteNode?
    var led265:SKSpriteNode?
    var led266:SKSpriteNode?
    var led267:SKSpriteNode?
    var led268:SKSpriteNode?
    var led269:SKSpriteNode?
    var led270:SKSpriteNode?
    var led271:SKSpriteNode?
    var led272:SKSpriteNode?
    var led273:SKSpriteNode?
    var led274:SKSpriteNode?
    var led275:SKSpriteNode?
    var led276:SKSpriteNode?
    var led277:SKSpriteNode?
    var led278:SKSpriteNode?
    var led279:SKSpriteNode?
    var led280:SKSpriteNode?
    var led281:SKSpriteNode?
    var led282:SKSpriteNode?
    var led283:SKSpriteNode?
     */
    var led283:SKSpriteNode?
 
 
    var t = 0.2;

    override func didMove(to view: SKView) {
        
        self.physicsWorld.contactDelegate = self
        
        createHUD() //intialize HUD
        launchTime() //initialize score
        led283 = self.childNode(withName: "led283") as? SKSpriteNode
        upButton = self.childNode(withName: "upButton") as? SKSpriteNode //directional buttons
        downButton = self.childNode(withName: "downButton") as? SKSpriteNode //directional buttons
        leftButton = self.childNode(withName: "leftButton") as? SKSpriteNode //directional buttons
        rightButton = self.childNode(withName: "rightButton") as? SKSpriteNode //directional buttons
        aButton = self.childNode(withName: "aButton") as? SKSpriteNode
        bButton = self.childNode(withName: "bButton") as? SKSpriteNode //useless for now
        startButton = self.childNode(withName: "startButton") as? SKSpriteNode
        let backgroundSound = SKAudioNode(fileNamed: "bgm.mp3") //music
        self.addChild(backgroundSound)
        
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
        
        //var t = 0.2;
        
        
        self.run(SKAction.repeatForever(SKAction.sequence([SKAction.run{
            
            //self.spawnEnemy()
            
            self.scrollDown()
            //self.score = self.score + 1
            
            if((self.led283?.position.y)! < CGFloat(-149)){
                
                self.moveTrackBackUp()
                self.t = self.t - 0.1;
                
            }
            
        
            }, SKAction.wait(forDuration: t)]))) //spawn per sec
        
        
        
        
        
        
        
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
            
        }),SKAction.wait (forDuration: self.t)]))
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
    
    func scrollDown(){   //moving all the led at once for -90 in 0 secs, to make it resemble an led action
        
        let moveAction = SKAction.moveBy(x:0, y:-90, duration: 0)
       
        
        for i in ledArray!{
            
            i.zPosition = 19
            i.run(moveAction)
        }
        
        
        
    }
    
    
    func makeLed()-> SKSpriteNode{ //creating background
        
        let testLed = SKSpriteNode(color: SKColor.cyan, size: CGSize(width: 85, height: 85))
        
        testLed.name = "lll"
        
        return testLed
        
    }
    
    
    
    func makeGrid(){ //creating the grids
        
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

    func didBegin(_ contact: SKPhysicsContact) {
        //physics using bitmask
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
        
        //making 284 obstacle leds
        for i in 1...284 {
            if let node = self.childNode(withName: "led\(i)") as? SKSpriteNode{
                node.physicsBody?.categoryBitMask = enemyCategory
                node.physicsBody?.collisionBitMask = 0
                ledArray?.append(node)
            }
            
            
    }
    }
       /* led1 = self.childNode(withName: "led1") as? SKSpriteNode
        led1?.physicsBody?.categoryBitMask = enemyCategory
        led1?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led1!)
        led2 = self.childNode(withName: "led2") as? SKSpriteNode
        led2?.physicsBody?.categoryBitMask = enemyCategory
        led2?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led2!)
        led3 = self.childNode(withName: "led3") as? SKSpriteNode
        led3?.physicsBody?.categoryBitMask = enemyCategory
        led3?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led3!)
        led4 = self.childNode(withName: "led4") as? SKSpriteNode
        led4?.physicsBody?.categoryBitMask = enemyCategory
        led4?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led4!)
        led5 = self.childNode(withName: "led5") as? SKSpriteNode
        ledArray?.append(led5!)
        led6 = self.childNode(withName: "led6") as? SKSpriteNode
        ledArray?.append(led6!)
        led7 = self.childNode(withName: "led7") as? SKSpriteNode
        led7?.physicsBody?.categoryBitMask = enemyCategory
        led7?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led7!)
        led8 = self.childNode(withName: "led8") as? SKSpriteNode
        ledArray?.append(led8!)
        led9 = self.childNode(withName: "led9") as? SKSpriteNode
        ledArray?.append(led9!)
        led10 = self.childNode(withName: "led10") as? SKSpriteNode
        ledArray?.append(led10!)
        led11 = self.childNode(withName: "led11") as? SKSpriteNode
        led11?.physicsBody?.categoryBitMask = enemyCategory
        led11?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led11!)
        led12 = self.childNode(withName: "led12") as? SKSpriteNode
        ledArray?.append(led12!)
        led13 = self.childNode(withName: "led13") as? SKSpriteNode
        ledArray?.append(led13!)
        led14 = self.childNode(withName: "led14") as? SKSpriteNode
        led14?.physicsBody?.categoryBitMask = enemyCategory
        led14?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led14!)
        led15 = self.childNode(withName: "led15") as? SKSpriteNode
        ledArray?.append(led15!)
        led16 = self.childNode(withName: "led16") as? SKSpriteNode
        led16?.physicsBody?.categoryBitMask = enemyCategory
        led16?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led16!)
        led17 = self.childNode(withName: "led17") as? SKSpriteNode
        ledArray?.append(led17!)
        led18 = self.childNode(withName: "led18") as? SKSpriteNode
        led18?.physicsBody?.categoryBitMask = enemyCategory
        led18?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led18!)
        led19 = self.childNode(withName: "led19") as? SKSpriteNode
        ledArray?.append(led19!)
        led20 = self.childNode(withName: "led20") as? SKSpriteNode
        ledArray?.append(led20!)
        led21 = self.childNode(withName: "led21") as? SKSpriteNode
        led21?.physicsBody?.categoryBitMask = enemyCategory
        led21?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led21!)
        led22 = self.childNode(withName: "led22") as? SKSpriteNode
        ledArray?.append(led22!)
        led23 = self.childNode(withName: "led23") as? SKSpriteNode
        ledArray?.append(led23!)
        led24 = self.childNode(withName: "led24") as? SKSpriteNode
        led24?.physicsBody?.categoryBitMask = enemyCategory
        led24?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led24!)
        led25 = self.childNode(withName: "led25") as? SKSpriteNode
        ledArray?.append(led25!)
        led26 = self.childNode(withName: "led26") as? SKSpriteNode
        led26?.physicsBody?.categoryBitMask = enemyCategory
        led26?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led26!)
        led27 = self.childNode(withName: "led27") as? SKSpriteNode
        led27?.physicsBody?.categoryBitMask = enemyCategory
        led27?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led27!)
        led28 = self.childNode(withName: "led28") as? SKSpriteNode
        led28?.physicsBody?.categoryBitMask = enemyCategory
        led28?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led28!)
        led29 = self.childNode(withName: "led29") as? SKSpriteNode
        ledArray?.append(led29!)
        led30 = self.childNode(withName: "led30") as? SKSpriteNode
        ledArray?.append(led30!)
        led31 = self.childNode(withName: "led31") as? SKSpriteNode
        led31?.physicsBody?.categoryBitMask = enemyCategory
        led31?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led31!)
        led32 = self.childNode(withName: "led32") as? SKSpriteNode
        ledArray?.append(led32!)
        led33 = self.childNode(withName: "led33") as? SKSpriteNode
        led33?.physicsBody?.categoryBitMask = enemyCategory
        led33?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led33!)
        led34 = self.childNode(withName: "led34") as? SKSpriteNode
        led34?.physicsBody?.categoryBitMask = enemyCategory
        led34?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led34!)
        led35 = self.childNode(withName: "led35") as? SKSpriteNode
        led35?.physicsBody?.categoryBitMask = enemyCategory
        led35?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led35!)
        led36 = self.childNode(withName: "led36") as? SKSpriteNode
        led36?.physicsBody?.categoryBitMask = enemyCategory
        led36?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led36!)
        led37 = self.childNode(withName: "led37") as? SKSpriteNode
        led37?.physicsBody?.categoryBitMask = enemyCategory
        led37?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led37!)
        led38 = self.childNode(withName: "led38") as? SKSpriteNode
        ledArray?.append(led38!)
        led39 = self.childNode(withName: "led39") as? SKSpriteNode
        led39?.physicsBody?.categoryBitMask = enemyCategory
        led39?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led39!)
        led40 = self.childNode(withName: "led40") as? SKSpriteNode
        ledArray?.append(led40!)
        led41 = self.childNode(withName: "led41") as? SKSpriteNode
        ledArray?.append(led41!)
        led42 = self.childNode(withName: "led42") as? SKSpriteNode
        led42?.physicsBody?.categoryBitMask = enemyCategory
        led42?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led42!)
        led43 = self.childNode(withName: "led43") as? SKSpriteNode
        led43?.physicsBody?.categoryBitMask = enemyCategory
        led43?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led43!)
        led44 = self.childNode(withName: "led44") as? SKSpriteNode
        led44?.physicsBody?.categoryBitMask = enemyCategory
        led44?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led44!)
        led45 = self.childNode(withName: "led45") as? SKSpriteNode
        led45?.physicsBody?.categoryBitMask = enemyCategory
        led45?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led45!)
        led46 = self.childNode(withName: "led46") as? SKSpriteNode
        led46?.physicsBody?.categoryBitMask = enemyCategory
        led46?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led46!)
        led47 = self.childNode(withName: "led47") as? SKSpriteNode
        led47?.physicsBody?.categoryBitMask = enemyCategory
        led47?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led47!)
        led48 = self.childNode(withName: "led48") as? SKSpriteNode
        ledArray?.append(led48!)
        led49 = self.childNode(withName: "led49") as? SKSpriteNode
        led49?.physicsBody?.categoryBitMask = enemyCategory
        led49?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led49!)
        led50 = self.childNode(withName: "led50") as? SKSpriteNode
        led50?.physicsBody?.categoryBitMask = enemyCategory
        led50?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led50!)
        led51 = self.childNode(withName: "led51") as? SKSpriteNode
        led51?.physicsBody?.categoryBitMask = enemyCategory
        led51?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led51!)
        led52 = self.childNode(withName: "led52") as? SKSpriteNode
        led52?.physicsBody?.categoryBitMask = enemyCategory
        led52?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led52!)
        led53 = self.childNode(withName: "led53") as? SKSpriteNode
        ledArray?.append(led53!)
        led54 = self.childNode(withName: "led54") as? SKSpriteNode
        ledArray?.append(led54!)
        led55 = self.childNode(withName: "led55") as? SKSpriteNode
        led55?.physicsBody?.categoryBitMask = enemyCategory
        led55?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led55!)
        led56 = self.childNode(withName: "led56") as? SKSpriteNode
        ledArray?.append(led56!)
        led57 = self.childNode(withName: "led57") as? SKSpriteNode
        led57?.physicsBody?.categoryBitMask = enemyCategory
        led57?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led57!)
        led58 = self.childNode(withName: "led58") as? SKSpriteNode
        ledArray?.append(led58!)
        led59 = self.childNode(withName: "led59") as? SKSpriteNode
        ledArray?.append(led59!)
        led60 = self.childNode(withName: "led60") as? SKSpriteNode
        led60?.physicsBody?.categoryBitMask = enemyCategory
        led60?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led60!)
        led61 = self.childNode(withName: "led61") as? SKSpriteNode
        ledArray?.append(led61!)
        led62 = self.childNode(withName: "led62") as? SKSpriteNode
        ledArray?.append(led62!)
        led63 = self.childNode(withName: "led63") as? SKSpriteNode
        led63?.physicsBody?.categoryBitMask = enemyCategory
        led63?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led63!)
        led64 = self.childNode(withName: "led64") as? SKSpriteNode
        ledArray?.append(led64!)
        led65 = self.childNode(withName: "led65") as? SKSpriteNode
        led65?.physicsBody?.categoryBitMask = enemyCategory
        led65?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led65!)
        led66 = self.childNode(withName: "led66") as? SKSpriteNode
        led66?.physicsBody?.categoryBitMask = enemyCategory
        led66?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led66!)
        led67 = self.childNode(withName: "led67") as? SKSpriteNode
        led67?.physicsBody?.categoryBitMask = enemyCategory
        led67?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led67!)
        led68 = self.childNode(withName: "led68") as? SKSpriteNode
        ledArray?.append(led68!)
        led69 = self.childNode(withName: "led69") as? SKSpriteNode
        ledArray?.append(led69!)
        led70 = self.childNode(withName: "led70") as? SKSpriteNode
        led70?.physicsBody?.categoryBitMask = enemyCategory
        led70?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led70!)
        led71 = self.childNode(withName: "led71") as? SKSpriteNode
        led71?.physicsBody?.categoryBitMask = enemyCategory
        led71?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led71!)
        led72 = self.childNode(withName: "led72") as? SKSpriteNode
        ledArray?.append(led72!)
        led73 = self.childNode(withName: "led73") as? SKSpriteNode
        ledArray?.append(led73!)
        led74 = self.childNode(withName: "led74") as? SKSpriteNode
        led74?.physicsBody?.categoryBitMask = enemyCategory
        led74?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led74!)
        led76 = self.childNode(withName: "led76") as? SKSpriteNode
        led76?.physicsBody?.categoryBitMask = enemyCategory
        led76?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led76!)
        led77 = self.childNode(withName: "led77") as? SKSpriteNode
        led77?.physicsBody?.categoryBitMask = enemyCategory
        led77?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led77!)
        led78 = self.childNode(withName: "led78") as? SKSpriteNode
        led78?.physicsBody?.categoryBitMask = enemyCategory
        led78?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led78!)
        led79 = self.childNode(withName: "led79") as? SKSpriteNode
        led79?.physicsBody?.categoryBitMask = enemyCategory
        led79?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led79!)
        led80 = self.childNode(withName: "led80") as? SKSpriteNode
        led80?.physicsBody?.categoryBitMask = enemyCategory
        led80?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led80!)
        led81 = self.childNode(withName: "led81") as? SKSpriteNode
        led81?.physicsBody?.categoryBitMask = enemyCategory
        led81?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led81!)
        led82 = self.childNode(withName: "led82") as? SKSpriteNode
        led82?.physicsBody?.categoryBitMask = enemyCategory
        led82?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led82!)
        led83 = self.childNode(withName: "led83") as? SKSpriteNode
        led83?.physicsBody?.categoryBitMask = enemyCategory
        led83?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led83!)
        led84 = self.childNode(withName: "led84") as? SKSpriteNode
        led84?.physicsBody?.categoryBitMask = enemyCategory
        led84?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led84!)
        led85 = self.childNode(withName: "led85") as? SKSpriteNode
        led85?.physicsBody?.categoryBitMask = enemyCategory
        led85?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led85!)
        led86 = self.childNode(withName: "led86") as? SKSpriteNode
        ledArray?.append(led86!)
        led87 = self.childNode(withName: "led87") as? SKSpriteNode
        led87?.physicsBody?.categoryBitMask = enemyCategory
        led87?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led87!)
        led88 = self.childNode(withName: "led88") as? SKSpriteNode
        led88?.physicsBody?.categoryBitMask = enemyCategory
        led88?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led88!)
        led89 = self.childNode(withName: "led89") as? SKSpriteNode
        ledArray?.append(led89!)
        led90 = self.childNode(withName: "led90") as? SKSpriteNode
        ledArray?.append(led90!)
        led91 = self.childNode(withName: "led91") as? SKSpriteNode
        ledArray?.append(led91!)
        led92 = self.childNode(withName: "led92") as? SKSpriteNode
        led92?.physicsBody?.categoryBitMask = enemyCategory
        led92?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led92!)
        led93 = self.childNode(withName: "led93") as? SKSpriteNode
        led93?.physicsBody?.categoryBitMask = enemyCategory
        led93?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led93!)
        led94 = self.childNode(withName: "led94") as? SKSpriteNode
        ledArray?.append(led94!)
        led95 = self.childNode(withName: "led95") as? SKSpriteNode
        ledArray?.append(led95!)
        led96 = self.childNode(withName: "led96") as? SKSpriteNode
        ledArray?.append(led96!)
        led97 = self.childNode(withName: "led97") as? SKSpriteNode
        led97?.physicsBody?.categoryBitMask = enemyCategory
        led97?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led97!)
        led98 = self.childNode(withName: "led98") as? SKSpriteNode
        ledArray?.append(led98!)
        led99 = self.childNode(withName: "led99") as? SKSpriteNode
        ledArray?.append(led99!)
        led100 = self.childNode(withName: "led100") as? SKSpriteNode
        led100?.physicsBody?.categoryBitMask = enemyCategory
        led100?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led100!)
        led101 = self.childNode(withName: "led101") as? SKSpriteNode
        led101?.physicsBody?.categoryBitMask = enemyCategory
        led101?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led101!)
        led102 = self.childNode(withName: "led102") as? SKSpriteNode
        led102?.physicsBody?.categoryBitMask = enemyCategory
        led102?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led102!)
        led103 = self.childNode(withName: "led103") as? SKSpriteNode
        ledArray?.append(led103!)
        led104 = self.childNode(withName: "led104") as? SKSpriteNode
        
        ledArray?.append(led104!)
        led105 = self.childNode(withName: "led105") as? SKSpriteNode
       
        ledArray?.append(led105!)
        led106 = self.childNode(withName: "led106") as? SKSpriteNode
        led106?.physicsBody?.categoryBitMask = enemyCategory
        led106?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led106!)
        led107 = self.childNode(withName: "led107") as? SKSpriteNode
        
        ledArray?.append(led107!)
        led108 = self.childNode(withName: "led108") as? SKSpriteNode
        
        ledArray?.append(led108!)
        led109 = self.childNode(withName: "led109") as? SKSpriteNode
        led109?.physicsBody?.categoryBitMask = enemyCategory
        led109?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led109!)
        led110 = self.childNode(withName: "led110") as? SKSpriteNode
        led110?.physicsBody?.categoryBitMask = enemyCategory
        led110?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led110!)
        led111 = self.childNode(withName: "led111") as? SKSpriteNode
        led111?.physicsBody?.categoryBitMask = enemyCategory
        led111?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led111!)
        led112 = self.childNode(withName: "led112") as? SKSpriteNode
        led112?.physicsBody?.categoryBitMask = enemyCategory
        led112?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led112!)
        led113 = self.childNode(withName: "led113") as? SKSpriteNode
        led113?.physicsBody?.categoryBitMask = enemyCategory
        led113?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led113!)
        led114 = self.childNode(withName: "led114") as? SKSpriteNode
        led114?.physicsBody?.categoryBitMask = enemyCategory
        led114?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led114!)
        led115 = self.childNode(withName: "led115") as? SKSpriteNode
        led115?.physicsBody?.categoryBitMask = enemyCategory
        led115?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led115!)
        led116 = self.childNode(withName: "led116") as? SKSpriteNode
        led116?.physicsBody?.categoryBitMask = enemyCategory
        led116?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led116!)
        led117 = self.childNode(withName: "led117") as? SKSpriteNode
       
        ledArray?.append(led117!)
        led118 = self.childNode(withName: "led118") as? SKSpriteNode
        led118?.physicsBody?.categoryBitMask = enemyCategory
        led118?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led118!)
        led119 = self.childNode(withName: "led119") as? SKSpriteNode
      
        ledArray?.append(led119!)
        led120 = self.childNode(withName: "led120") as? SKSpriteNode
        led120?.physicsBody?.categoryBitMask = enemyCategory
        led120?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led120!)
        led121 = self.childNode(withName: "led121") as? SKSpriteNode
        
        ledArray?.append(led121!)
        led122 = self.childNode(withName: "led122") as? SKSpriteNode
        
        ledArray?.append(led122!)
        led123 = self.childNode(withName: "led123") as? SKSpriteNode
        
        ledArray?.append(led123!)
        led124 = self.childNode(withName: "led124") as? SKSpriteNode
        led124?.physicsBody?.categoryBitMask = enemyCategory
        led124?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led124!)
        led125 = self.childNode(withName: "led125") as? SKSpriteNode
        
        ledArray?.append(led125!)
        led126 = self.childNode(withName: "led126") as? SKSpriteNode
       
        ledArray?.append(led126!)
        led127 = self.childNode(withName: "led127") as? SKSpriteNode
        
        ledArray?.append(led127!)
        led128 = self.childNode(withName: "led128") as? SKSpriteNode
        
        ledArray?.append(led128!)
        led129 = self.childNode(withName: "led129") as? SKSpriteNode
        led129?.physicsBody?.categoryBitMask = enemyCategory
        led129?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led129!)
        led130 = self.childNode(withName: "led130") as? SKSpriteNode
        
        ledArray?.append(led130!)
        led131 = self.childNode(withName: "led131") as? SKSpriteNode
        
        ledArray?.append(led131!)
        led132 = self.childNode(withName: "led132") as? SKSpriteNode
        
        ledArray?.append(led132!)
        led133 = self.childNode(withName: "led133") as? SKSpriteNode
        led133?.physicsBody?.categoryBitMask = enemyCategory
        led133?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led133!)
        led134 = self.childNode(withName: "led134") as? SKSpriteNode
        
        ledArray?.append(led134!)
        led135 = self.childNode(withName: "led135") as? SKSpriteNode
        
        ledArray?.append(led135!)
        led136 = self.childNode(withName: "led136") as? SKSpriteNode
        
        ledArray?.append(led136!)
        led137 = self.childNode(withName: "led137") as? SKSpriteNode
        
        ledArray?.append(led137!)
        led138 = self.childNode(withName: "led138") as? SKSpriteNode
        led138?.physicsBody?.categoryBitMask = enemyCategory
        led138?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led138!)
        led139 = self.childNode(withName: "led139") as? SKSpriteNode
        led139?.physicsBody?.categoryBitMask = enemyCategory
        led139?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led139!)
        led140 = self.childNode(withName: "led140") as? SKSpriteNode
        
        ledArray?.append(led140!)
        led141 = self.childNode(withName: "led141") as? SKSpriteNode
        
        ledArray?.append(led141!)
        led142 = self.childNode(withName: "led142") as? SKSpriteNode
        led142?.physicsBody?.categoryBitMask = enemyCategory
        led142?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led142!)
        led143 = self.childNode(withName: "led143") as? SKSpriteNode
        led143?.physicsBody?.categoryBitMask = enemyCategory
        led143?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led143!)
        led144 = self.childNode(withName: "led144") as? SKSpriteNode
        
        ledArray?.append(led144!)
        led145 = self.childNode(withName: "led145") as? SKSpriteNode
        led145?.physicsBody?.categoryBitMask = enemyCategory
        led145?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led145!)
        led146 = self.childNode(withName: "led146") as? SKSpriteNode
        
        ledArray?.append(led146!)
        led147 = self.childNode(withName: "led147") as? SKSpriteNode
        led147?.physicsBody?.categoryBitMask = enemyCategory
        led147?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led147!)
        led148 = self.childNode(withName: "led148") as? SKSpriteNode
        
        ledArray?.append(led148!)
        led149 = self.childNode(withName: "led149") as? SKSpriteNode
        
        ledArray?.append(led149!)
        led150 = self.childNode(withName: "led150") as? SKSpriteNode
        
        ledArray?.append(led150!)
        led151 = self.childNode(withName: "led151") as? SKSpriteNode
        led151?.physicsBody?.categoryBitMask = enemyCategory
        led151?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led151!)
        led152 = self.childNode(withName: "led152") as? SKSpriteNode
        
        ledArray?.append(led152!)
        led153 = self.childNode(withName: "led153") as? SKSpriteNode
        led153?.physicsBody?.categoryBitMask = enemyCategory
        led153?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led153!)
        led154 = self.childNode(withName: "led154") as? SKSpriteNode
       
        ledArray?.append(led154!)
        led155 = self.childNode(withName: "led155") as? SKSpriteNode
        
        ledArray?.append(led155!)
        led156 = self.childNode(withName: "led156") as? SKSpriteNode
        led156?.physicsBody?.categoryBitMask = enemyCategory
        led156?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led156!)
        led157 = self.childNode(withName: "led157") as? SKSpriteNode
        led157?.physicsBody?.categoryBitMask = enemyCategory
        led157?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led157!)
        led158 = self.childNode(withName: "led158") as? SKSpriteNode
        led158?.physicsBody?.categoryBitMask = enemyCategory
        led158?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led158!)
        led159 = self.childNode(withName: "led159") as? SKSpriteNode
        
        ledArray?.append(led159!)
        led160 = self.childNode(withName: "led160") as? SKSpriteNode
        led160?.physicsBody?.categoryBitMask = enemyCategory
        led160?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led160!)
        led161 = self.childNode(withName: "led161") as? SKSpriteNode
        
        ledArray?.append(led161!)
        led162 = self.childNode(withName: "led162") as? SKSpriteNode
        led162?.physicsBody?.categoryBitMask = enemyCategory
        led162?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led162!)
        led163 = self.childNode(withName: "led163") as? SKSpriteNode
       
        ledArray?.append(led163!)
        led164 = self.childNode(withName: "led164") as? SKSpriteNode
        led164?.physicsBody?.categoryBitMask = enemyCategory
        led164?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led164!)
        led165 = self.childNode(withName: "led165") as? SKSpriteNode
        led165?.physicsBody?.categoryBitMask = enemyCategory
        led165?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led165!)
        led166 = self.childNode(withName: "led166") as? SKSpriteNode
        
        ledArray?.append(led166!)
        led167 = self.childNode(withName: "led167") as? SKSpriteNode
        led167?.physicsBody?.categoryBitMask = enemyCategory
        led167?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led167!)
        led168 = self.childNode(withName: "led168") as? SKSpriteNode
        
        ledArray?.append(led168!)
        led169 = self.childNode(withName: "led169") as? SKSpriteNode
        led169?.physicsBody?.categoryBitMask = enemyCategory
        led169?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led169!)
        led170 = self.childNode(withName: "led170") as? SKSpriteNode
        
        ledArray?.append(led170!)
        led171 = self.childNode(withName: "led171") as? SKSpriteNode
        led171?.physicsBody?.categoryBitMask = enemyCategory
        led171?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led171!)
        led172 = self.childNode(withName: "led172") as? SKSpriteNode
        led172?.physicsBody?.categoryBitMask = enemyCategory
        led172?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led172!)
        led173 = self.childNode(withName: "led173") as? SKSpriteNode
       
        ledArray?.append(led173!)
        led174 = self.childNode(withName: "led174") as? SKSpriteNode
        led174?.physicsBody?.categoryBitMask = enemyCategory
        led174?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led174!)
        led175 = self.childNode(withName: "led175") as? SKSpriteNode
        
        ledArray?.append(led175!)
        led176 = self.childNode(withName: "led176") as? SKSpriteNode
        led176?.physicsBody?.categoryBitMask = enemyCategory
        led176?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led176!)
        led177 = self.childNode(withName: "led177") as? SKSpriteNode
        
        ledArray?.append(led177!)
        led178 = self.childNode(withName: "led178") as? SKSpriteNode
        
        ledArray?.append(led178!)
        led179 = self.childNode(withName: "led179") as? SKSpriteNode
        led179?.physicsBody?.categoryBitMask = enemyCategory
        led179?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led179!)
        led180 = self.childNode(withName: "led180") as? SKSpriteNode
        led180?.physicsBody?.categoryBitMask = enemyCategory
        led180?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led180!)
        led181 = self.childNode(withName: "led181") as? SKSpriteNode
        led181?.physicsBody?.categoryBitMask = enemyCategory
        led181?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led181!)
        led182 = self.childNode(withName: "led182") as? SKSpriteNode
        led182?.physicsBody?.categoryBitMask = enemyCategory
        led182?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led182!)
        led183 = self.childNode(withName: "led183") as? SKSpriteNode
        led183?.physicsBody?.categoryBitMask = enemyCategory
        led183?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led183!)
        led184 = self.childNode(withName: "led184") as? SKSpriteNode
        led184?.physicsBody?.categoryBitMask = enemyCategory
        led184?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led184!)
        led185 = self.childNode(withName: "led185") as? SKSpriteNode
        led185?.physicsBody?.categoryBitMask = enemyCategory
        led185?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led185!)
        led186 = self.childNode(withName: "led186") as? SKSpriteNode
        led186?.physicsBody?.categoryBitMask = enemyCategory
        led186?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led186!)
        led187 = self.childNode(withName: "led187") as? SKSpriteNode
        
        ledArray?.append(led187!)
        led188 = self.childNode(withName: "led188") as? SKSpriteNode
        led188?.physicsBody?.categoryBitMask = enemyCategory
        led188?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led188!)
        led189 = self.childNode(withName: "led189") as? SKSpriteNode
        
        ledArray?.append(led189!)
        led190 = self.childNode(withName: "led190") as? SKSpriteNode
        led190?.physicsBody?.categoryBitMask = enemyCategory
        led190?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led190!)
        led191 = self.childNode(withName: "led191") as? SKSpriteNode
        
        ledArray?.append(led191!)
        led192 = self.childNode(withName: "led192") as? SKSpriteNode
        led192?.physicsBody?.categoryBitMask = enemyCategory
        led192?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led192!)
        led193 = self.childNode(withName: "led193") as? SKSpriteNode
       
        ledArray?.append(led193!)
        led194 = self.childNode(withName: "led194") as? SKSpriteNode
        led194?.physicsBody?.categoryBitMask = enemyCategory
        led194?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led194!)
        led195 = self.childNode(withName: "led195") as? SKSpriteNode
        led195?.physicsBody?.categoryBitMask = enemyCategory
        led195?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led195!)
        led196 = self.childNode(withName: "led196") as? SKSpriteNode
        
        ledArray?.append(led196!)
        led197 = self.childNode(withName: "led197") as? SKSpriteNode
        led197?.physicsBody?.categoryBitMask = enemyCategory
        led197?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led197!)
        led198 = self.childNode(withName: "led198") as? SKSpriteNode
        led198?.physicsBody?.categoryBitMask = enemyCategory
        led198?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led198!)
        led199 = self.childNode(withName: "led199") as? SKSpriteNode
        led199?.physicsBody?.categoryBitMask = enemyCategory
        led199?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led199!)
        led200 = self.childNode(withName: "led200") as? SKSpriteNode
        led200?.physicsBody?.categoryBitMask = enemyCategory
        led200?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led200!)
        led201 = self.childNode(withName: "led201") as? SKSpriteNode
        led201?.physicsBody?.categoryBitMask = enemyCategory
        led201?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led201!)
        led202 = self.childNode(withName: "led202") as? SKSpriteNode
        led202?.physicsBody?.categoryBitMask = enemyCategory
        led202?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led202!)
        led203 = self.childNode(withName: "led203") as? SKSpriteNode
        led203?.physicsBody?.categoryBitMask = enemyCategory
        led203?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led203!)
        led204 = self.childNode(withName: "led204") as? SKSpriteNode
        led204?.physicsBody?.categoryBitMask = enemyCategory
        led204?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led204!)
        led205 = self.childNode(withName: "led205") as? SKSpriteNode
        led205?.physicsBody?.categoryBitMask = enemyCategory
        led205?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led205!)
        led206 = self.childNode(withName: "led206") as? SKSpriteNode
        
        ledArray?.append(led206!)
        led207 = self.childNode(withName: "led207") as? SKSpriteNode
        led207?.physicsBody?.categoryBitMask = enemyCategory
        led207?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led207!)
        led208 = self.childNode(withName: "led208") as? SKSpriteNode
        led208?.physicsBody?.categoryBitMask = enemyCategory
        led208?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led208!)
        led209 = self.childNode(withName: "led209") as? SKSpriteNode
        led209?.physicsBody?.categoryBitMask = enemyCategory
        led209?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led209!)
        led210 = self.childNode(withName: "led210") as? SKSpriteNode
        led210?.physicsBody?.categoryBitMask = enemyCategory
        led210?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led210!)
        led211 = self.childNode(withName: "led211") as? SKSpriteNode
        led211?.physicsBody?.categoryBitMask = enemyCategory
        led211?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led211!)
        led212 = self.childNode(withName: "led212") as? SKSpriteNode
        led212?.physicsBody?.categoryBitMask = enemyCategory
        led212?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led212!)
        led213 = self.childNode(withName: "led213") as? SKSpriteNode
        led213?.physicsBody?.categoryBitMask = enemyCategory
        led213?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led213!)
        led214 = self.childNode(withName: "led214") as? SKSpriteNode
        led214?.physicsBody?.categoryBitMask = enemyCategory
        led214?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led214!)
        led215 = self.childNode(withName: "led215") as? SKSpriteNode
        led215?.physicsBody?.categoryBitMask = enemyCategory
        led215?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led215!)
        led216 = self.childNode(withName: "led216") as? SKSpriteNode
        
        ledArray?.append(led216!)
        led217 = self.childNode(withName: "led217") as? SKSpriteNode
        led217?.physicsBody?.categoryBitMask = enemyCategory
        led217?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led217!)
        led218 = self.childNode(withName: "led218") as? SKSpriteNode
        led218?.physicsBody?.categoryBitMask = enemyCategory
        led218?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led218!)
        led219 = self.childNode(withName: "led219") as? SKSpriteNode
        led219?.physicsBody?.categoryBitMask = enemyCategory
        led219?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led219!)
        led220 = self.childNode(withName: "led220") as? SKSpriteNode
        led220?.physicsBody?.categoryBitMask = enemyCategory
        led220?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led220!)
        led221 = self.childNode(withName: "led221") as? SKSpriteNode
        led221?.physicsBody?.categoryBitMask = enemyCategory
        led221?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led221!)
        led222 = self.childNode(withName: "led222") as? SKSpriteNode
        led222?.physicsBody?.categoryBitMask = enemyCategory
        led222?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led222!)
        led223 = self.childNode(withName: "led223") as? SKSpriteNode
        led223?.physicsBody?.categoryBitMask = enemyCategory
        led223?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led223!)
        led224 = self.childNode(withName: "led224") as? SKSpriteNode
        led224?.physicsBody?.categoryBitMask = enemyCategory
        led224?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led224!)
        led225 = self.childNode(withName: "led225") as? SKSpriteNode
        led225?.physicsBody?.categoryBitMask = enemyCategory
        led225?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led225!)
        led226 = self.childNode(withName: "led226") as? SKSpriteNode
        led226?.physicsBody?.categoryBitMask = enemyCategory
        led226?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led226!)
        led227 = self.childNode(withName: "led227") as? SKSpriteNode
        led227?.physicsBody?.categoryBitMask = enemyCategory
        led227?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led227!)
        led228 = self.childNode(withName: "led228") as? SKSpriteNode
        led228?.physicsBody?.categoryBitMask = enemyCategory
        led228?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led228!)
        led229 = self.childNode(withName: "led229") as? SKSpriteNode
        led229?.physicsBody?.categoryBitMask = enemyCategory
        led229?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led229!)
        led230 = self.childNode(withName: "led230") as? SKSpriteNode
        led230?.physicsBody?.categoryBitMask = enemyCategory
        led230?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led230!)
        led231 = self.childNode(withName: "led231") as? SKSpriteNode
        led231?.physicsBody?.categoryBitMask = enemyCategory
        led231?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led231!)
        led232 = self.childNode(withName: "led232") as? SKSpriteNode
        led232?.physicsBody?.categoryBitMask = enemyCategory
        led232?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led232!)
        led233 = self.childNode(withName: "led233") as? SKSpriteNode
        led233?.physicsBody?.categoryBitMask = enemyCategory
        led233?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led233!)
        led234 = self.childNode(withName: "led234") as? SKSpriteNode
        led234?.physicsBody?.categoryBitMask = enemyCategory
        led234?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led234!)
        led235 = self.childNode(withName: "led235") as? SKSpriteNode
        led235?.physicsBody?.categoryBitMask = enemyCategory
        led235?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led235!)
        led236 = self.childNode(withName: "led236") as? SKSpriteNode
        
        ledArray?.append(led236!)
        led237 = self.childNode(withName: "led237") as? SKSpriteNode
        led237?.physicsBody?.categoryBitMask = enemyCategory
        led237?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led237!)
        led238 = self.childNode(withName: "led238") as? SKSpriteNode
        led238?.physicsBody?.categoryBitMask = enemyCategory
        led238?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led238!)
        led239 = self.childNode(withName: "led239") as? SKSpriteNode
        led239?.physicsBody?.categoryBitMask = enemyCategory
        led239?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led239!)
        led240 = self.childNode(withName: "led240") as? SKSpriteNode
        led240?.physicsBody?.categoryBitMask = enemyCategory
        led240?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led240!)
        led241 = self.childNode(withName: "led241") as? SKSpriteNode
        led241?.physicsBody?.categoryBitMask = enemyCategory
        led241?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led241!)
        led242 = self.childNode(withName: "led242") as? SKSpriteNode
        led242?.physicsBody?.categoryBitMask = enemyCategory
        led242?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led242!)
        led243 = self.childNode(withName: "led243") as? SKSpriteNode
        led243?.physicsBody?.categoryBitMask = enemyCategory
        led243?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led243!)
        led244 = self.childNode(withName: "led244") as? SKSpriteNode
        led244?.physicsBody?.categoryBitMask = enemyCategory
        led244?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led244!)
        led245 = self.childNode(withName: "led245") as? SKSpriteNode
        led245?.physicsBody?.categoryBitMask = enemyCategory
        led245?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led245!)
        led246 = self.childNode(withName: "led246") as? SKSpriteNode
        led246?.physicsBody?.categoryBitMask = enemyCategory
        led246?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led246!)
        led247 = self.childNode(withName: "led247") as? SKSpriteNode
        led247?.physicsBody?.categoryBitMask = enemyCategory
        led247?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led247!)
        led248 = self.childNode(withName: "led248") as? SKSpriteNode
        led248?.physicsBody?.categoryBitMask = enemyCategory
        led248?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led248!)
        led249 = self.childNode(withName: "led249") as? SKSpriteNode
        led249?.physicsBody?.categoryBitMask = enemyCategory
        led249?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led249!)
        led250 = self.childNode(withName: "led250") as? SKSpriteNode
        led250?.physicsBody?.categoryBitMask = enemyCategory
        led250?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led250!)
        led251 = self.childNode(withName: "led251") as? SKSpriteNode
        led251?.physicsBody?.categoryBitMask = enemyCategory
        led251?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led251!)
        led252 = self.childNode(withName: "led252") as? SKSpriteNode
        led252?.physicsBody?.categoryBitMask = enemyCategory
        led252?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led252!)
        led253 = self.childNode(withName: "led253") as? SKSpriteNode
        led253?.physicsBody?.categoryBitMask = enemyCategory
        led253?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led253!)
        led254 = self.childNode(withName: "led254") as? SKSpriteNode
        led254?.physicsBody?.categoryBitMask = enemyCategory
        led254?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led254!)
        led255 = self.childNode(withName: "led255") as? SKSpriteNode
        led255?.physicsBody?.categoryBitMask = enemyCategory
        led255?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led255!)
        led256 = self.childNode(withName: "led256") as? SKSpriteNode
        led256?.physicsBody?.categoryBitMask = enemyCategory
        led256?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led256!)
        led257 = self.childNode(withName: "led257") as? SKSpriteNode
       
        ledArray?.append(led257!)
        led258 = self.childNode(withName: "led258") as? SKSpriteNode
        led258?.physicsBody?.categoryBitMask = enemyCategory
        led258?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led258!)
        led259 = self.childNode(withName: "led259") as? SKSpriteNode
        led259?.physicsBody?.categoryBitMask = enemyCategory
        led259?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led259!)
        led260 = self.childNode(withName: "led260") as? SKSpriteNode
        led260?.physicsBody?.categoryBitMask = enemyCategory
        led260?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led260!)
        led261 = self.childNode(withName: "led261") as? SKSpriteNode
        
        ledArray?.append(led261!)
        led262 = self.childNode(withName: "led262") as? SKSpriteNode
        led262?.physicsBody?.categoryBitMask = enemyCategory
        led262?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led262!)
        led263 = self.childNode(withName: "led263") as? SKSpriteNode
        led263?.physicsBody?.categoryBitMask = enemyCategory
        led263?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led263!)
        led264 = self.childNode(withName: "led264") as? SKSpriteNode
        led264?.physicsBody?.categoryBitMask = enemyCategory
        led264?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led264!)
        led265 = self.childNode(withName: "led265") as? SKSpriteNode
        led265?.physicsBody?.categoryBitMask = enemyCategory
        led265?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led265!)
        led266 = self.childNode(withName: "led266") as? SKSpriteNode
        ledArray?.append(led266!)
        led267 = self.childNode(withName: "led267") as? SKSpriteNode
        led267?.physicsBody?.categoryBitMask = enemyCategory
        led267?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led267!)
        led268 = self.childNode(withName: "led268") as? SKSpriteNode
        led268?.physicsBody?.categoryBitMask = enemyCategory
        led268?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led268!)
        led269 = self.childNode(withName: "led269") as? SKSpriteNode
        led269?.physicsBody?.categoryBitMask = enemyCategory
        led269?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led269!)
        led270 = self.childNode(withName: "led270") as? SKSpriteNode
        led270?.physicsBody?.categoryBitMask = enemyCategory
        led270?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led270!)
        led271 = self.childNode(withName: "led271") as? SKSpriteNode
        led271?.physicsBody?.categoryBitMask = enemyCategory
        led271?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led271!)
        led272 = self.childNode(withName: "led272") as? SKSpriteNode
        led272?.physicsBody?.categoryBitMask = enemyCategory
        led272?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led272!)
        led273 = self.childNode(withName: "led273") as? SKSpriteNode
        led273?.physicsBody?.categoryBitMask = enemyCategory
        led273?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led273!)
        led274 = self.childNode(withName: "led274") as? SKSpriteNode
        led274?.physicsBody?.categoryBitMask = enemyCategory
        led274?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led274!)
        led275 = self.childNode(withName: "led275") as? SKSpriteNode
        led275?.physicsBody?.categoryBitMask = enemyCategory
        led275?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led275!)
        led276 = self.childNode(withName: "led276") as? SKSpriteNode
        led276?.physicsBody?.categoryBitMask = enemyCategory
        led276?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led276!)
        led277 = self.childNode(withName: "led277") as? SKSpriteNode
        led277?.physicsBody?.categoryBitMask = enemyCategory
        led277?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led277!)
        led278 = self.childNode(withName: "led278") as? SKSpriteNode
        led278?.physicsBody?.categoryBitMask = enemyCategory
        led278?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led278!)
        led279 = self.childNode(withName: "led279") as? SKSpriteNode
        led279?.physicsBody?.categoryBitMask = enemyCategory
        led279?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led279!)
        led280 = self.childNode(withName: "led280") as? SKSpriteNode
        led280?.physicsBody?.categoryBitMask = enemyCategory
        led280?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led280!)
        led281 = self.childNode(withName: "led281") as? SKSpriteNode
        led281?.physicsBody?.categoryBitMask = enemyCategory
        led281?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led281!)
        led282 = self.childNode(withName: "led282") as? SKSpriteNode
        led282?.physicsBody?.categoryBitMask = enemyCategory
        led282?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led282!)
        led283 = self.childNode(withName: "led283") as? SKSpriteNode
        led283?.physicsBody?.categoryBitMask = enemyCategory
        led283?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led283!)
        led284 = self.childNode(withName: "led284") as? SKSpriteNode
        led284?.physicsBody?.categoryBitMask = enemyCategory
        led284?.physicsBody?.collisionBitMask = 0
        ledArray?.append(led284!)

    }
 */
    
    
    func moveTrackBackUp(){
        //moving track back up when round is over
        for i in ledArray!{
            
            i.position.y = i.position.y + 10170;
            
        }
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
    func gameOver() {
        //handles gameover
        GameHandler.sharedInstance.saveGameStats()
        let transition = SKTransition.fade(withDuration: 0)
        if let gameOverScene = SKScene(fileNamed: "GameOverScene") {
            gameOverScene.scaleMode = .aspectFit
       
            self.view?.presentScene(gameOverScene, transition: transition)
        }
        
    }
    
}


