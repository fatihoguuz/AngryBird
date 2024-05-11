//
//  GameScene.swift
//  AngryBird
//
//  Created by Fatih Oğuz on 3.05.2024.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
  var bird = SKSpriteNode()
    var box1 = SKSpriteNode()
    var box2 = SKSpriteNode()
    var box3 = SKSpriteNode()
    var box4 = SKSpriteNode()
    var box5 = SKSpriteNode()
    var box6 = SKSpriteNode()
    var box7 = SKSpriteNode()
    var box8 = SKSpriteNode()
    var box9 = SKSpriteNode()
    var box10 = SKSpriteNode()
    var box11 = SKSpriteNode()
    var box12 = SKSpriteNode()
    var box13 = SKSpriteNode()
    var box14 = SKSpriteNode()
    var box15 = SKSpriteNode()
    
    
    var pig1 = SKSpriteNode()
    var pig2 = SKSpriteNode()
    var pig3 = SKSpriteNode()
    var pig4 = SKSpriteNode()
    
    var location4 = SKSpriteNode()
    var location5 = SKSpriteNode()
    var location6 = SKSpriteNode()
    var location7 = SKSpriteNode()
    var location8 = SKSpriteNode()
    var location9 = SKSpriteNode()
    var location10 = SKSpriteNode()
    var location11 = SKSpriteNode()
    
    var loc1 = SKSpriteNode()
    var loc2 = SKSpriteNode()
    var loc3 = SKSpriteNode()
    
    var grass1 = SKSpriteNode()
    
    var gameStarted = false
    var originalPosition: CGPoint?
    var originalPositionBox1: CGPoint?
    var originalPositionBox2: CGPoint?
    var originalPositionBox3: CGPoint?
    var originalPositionBox4: CGPoint?
    var originalPositionBox5: CGPoint?
    var originalPositionBox6: CGPoint?
    var originalPositionBox7: CGPoint?
    var originalPositionBox8: CGPoint?
    var originalPositionBox9: CGPoint?
    var originalPositionBox10: CGPoint?
    var originalPositionBox11: CGPoint?
    var originalPositionBox12: CGPoint?
    var originalPositionBox13: CGPoint?
    var originalPositionBox14: CGPoint?
    var originalPositionBox15: CGPoint?
    var originalPositionPig1: CGPoint?
    var originalPositionPig2: CGPoint?
    var originalPositionPig3: CGPoint?
    var originalPositionPig4: CGPoint?
    
    
    var score = 0
    var scoreLabel = SKLabelNode()
    
    var highScore = 0
    var highScoreLabel = SKLabelNode()
    
    enum ColliderType: UInt32{
        case Bird = 1
        case Box = 2
        case Pig = 4
    }
    
    override func didMove(to view: SKView) {
    //physics body
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.scene?.scaleMode = .aspectFill
        self.physicsWorld.contactDelegate = self
        
    //bird
        bird = childNode(withName: "bird") as! SKSpriteNode
        let birdTexture = SKTexture(imageNamed: "bird")
        
        
        bird.physicsBody = SKPhysicsBody(circleOfRadius: birdTexture.size().height / 20)
        bird.physicsBody?.affectedByGravity = false
        bird.physicsBody?.isDynamic = true
        bird.physicsBody?.mass = 0.18
        originalPosition = bird.position
        bird.physicsBody?.contactTestBitMask = ColliderType.Bird.rawValue
        bird.physicsBody?.categoryBitMask = ColliderType.Bird.rawValue
        bird.physicsBody?.collisionBitMask = ColliderType.Box.rawValue
        
    //location
        let locationTexture = SKTexture(imageNamed: "location")
        let locationSize = CGSize(width: locationTexture.size().width / 1.3, height: locationTexture.size().height / 1.3)
        
        location4 = childNode(withName: "location4") as! SKSpriteNode
        location4.physicsBody = SKPhysicsBody(rectangleOf: locationSize)
        location4.physicsBody?.isDynamic = false
        location4.physicsBody?.affectedByGravity = false
        location4.physicsBody?.allowsRotation = false
        location4.physicsBody?.mass = 100
       
        location5 = childNode(withName: "location5") as! SKSpriteNode
        location5.physicsBody = SKPhysicsBody(rectangleOf: locationSize)
        location5.physicsBody?.isDynamic = false
        location5.physicsBody?.affectedByGravity = false
        location5.physicsBody?.allowsRotation = false
        location5.physicsBody?.mass = 100
        
        location6 = childNode(withName: "location6") as! SKSpriteNode
        location6.physicsBody = SKPhysicsBody(rectangleOf: locationSize)
        location6.physicsBody?.isDynamic = false
        location6.physicsBody?.affectedByGravity = false
        location6.physicsBody?.allowsRotation = false
        location6.physicsBody?.mass = 100
        
        location7 = childNode(withName: "location7") as! SKSpriteNode
        location7.physicsBody = SKPhysicsBody(rectangleOf: locationSize)
        location7.physicsBody?.isDynamic = false
        location7.physicsBody?.affectedByGravity = false
        location7.physicsBody?.allowsRotation = false
        location7.physicsBody?.mass = 100
        
        location8 = childNode(withName: "location8") as! SKSpriteNode
        location8.physicsBody = SKPhysicsBody(rectangleOf: locationSize)
        location8.physicsBody?.isDynamic = false
        location8.physicsBody?.affectedByGravity = false
        location8.physicsBody?.allowsRotation = false
        location8.physicsBody?.mass = 100
        
        location9 = childNode(withName: "location9") as! SKSpriteNode
        location9.physicsBody = SKPhysicsBody(rectangleOf: locationSize)
        location9.physicsBody?.isDynamic = false
        location9.physicsBody?.affectedByGravity = false
        location9.physicsBody?.allowsRotation = false
        location9.physicsBody?.mass = 100
    
        location11 = childNode(withName: "location11") as! SKSpriteNode
        location11.physicsBody = SKPhysicsBody(rectangleOf: locationSize)
        location11.physicsBody?.isDynamic = false
        location11.physicsBody?.affectedByGravity = false
        location11.physicsBody?.allowsRotation = false
        location11.physicsBody?.mass = 100
        
        location10 = childNode(withName: "location10") as! SKSpriteNode
        location10.physicsBody = SKPhysicsBody(rectangleOf: locationSize)
        location10.physicsBody?.isDynamic = false
        location10.physicsBody?.affectedByGravity = false
        location10.physicsBody?.allowsRotation = false
        location10.physicsBody?.mass = 100
     
        
    //lc
        let locTexture = SKTexture(imageNamed: "jungle_pack_35")
        let locSize = CGSize(width: locTexture.size().width / 0.6, height: locTexture.size().height / 0.8)
        loc1 = childNode(withName: "locb") as! SKSpriteNode
        loc1.physicsBody = SKPhysicsBody(rectangleOf: locSize)
        loc1.physicsBody?.isDynamic = false
        loc1.physicsBody?.affectedByGravity = false
        loc1.physicsBody?.allowsRotation = false
        loc1.physicsBody?.mass = 100
        
        loc2 = childNode(withName: "locc") as! SKSpriteNode
        loc2.physicsBody = SKPhysicsBody(rectangleOf: locSize)
        loc2.physicsBody?.isDynamic = false
        loc2.physicsBody?.affectedByGravity = false
        loc2.physicsBody?.allowsRotation = false
        loc2.physicsBody?.mass = 100
        
    //grass
        let grassTexture = SKTexture(imageNamed: "grass")
        let grassSize = CGSize(width: locTexture.size().width / 1, height: locTexture.size().height / 1)
        grass1 = childNode(withName: "grass2") as! SKSpriteNode
        grass1.physicsBody = SKPhysicsBody(rectangleOf: locSize)
        grass1.physicsBody?.isDynamic = false
        grass1.physicsBody?.affectedByGravity = false
        grass1.physicsBody?.allowsRotation = false
        grass1.physicsBody?.mass = 100
        
        
    //box
        let boxTexture = SKTexture(imageNamed: "block")
        let size = CGSize(width: boxTexture.size().width / 9, height: boxTexture.size().height / 9)
        
        box1 = childNode(withName: "box1") as! SKSpriteNode
        box1.physicsBody = SKPhysicsBody(rectangleOf: size)
        box1.physicsBody?.isDynamic = true
        box1.physicsBody?.affectedByGravity = true
        box1.physicsBody?.allowsRotation = true
        box1.physicsBody?.mass = 0.1
        originalPositionBox1 = box1.position
        box1.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        box2 = childNode(withName: "box2") as! SKSpriteNode
        box2.physicsBody = SKPhysicsBody(rectangleOf: size)
        box2.physicsBody?.isDynamic = true
        box2.physicsBody?.affectedByGravity = true
        box2.physicsBody?.allowsRotation = true
        box2.physicsBody?.mass = 0.1
        originalPositionBox2 = box2.position
        box2.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        box3 = childNode(withName: "box3") as! SKSpriteNode
        box3.physicsBody = SKPhysicsBody(rectangleOf: size)
        box3.physicsBody?.isDynamic = true
        box3.physicsBody?.affectedByGravity = true
        box3.physicsBody?.allowsRotation = true
        box3.physicsBody?.mass = 0.1
        originalPositionBox3 = box3.position
        box3.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
    
        box4 = childNode(withName: "box4") as! SKSpriteNode
        box4.physicsBody = SKPhysicsBody(rectangleOf: size)
        box4.physicsBody?.isDynamic = true
        box4.physicsBody?.affectedByGravity = true
        box4.physicsBody?.allowsRotation = true
        box4.physicsBody?.mass = 0.1
        originalPositionBox4 = box4.position
        box4.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        box5 = childNode(withName: "box5") as! SKSpriteNode
        box5.physicsBody = SKPhysicsBody(rectangleOf: size)
        box5.physicsBody?.isDynamic = true
        box5.physicsBody?.affectedByGravity = true
        box5.physicsBody?.allowsRotation = true
        box5.physicsBody?.mass = 0.1
        originalPositionBox5 = box5.position
        box5.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        box6 = childNode(withName: "box6") as! SKSpriteNode
        box6.physicsBody = SKPhysicsBody(rectangleOf: size)
        box6.physicsBody?.isDynamic = true
        box6.physicsBody?.affectedByGravity = true
        box6.physicsBody?.allowsRotation = true
        box6.physicsBody?.mass = 0.1
        originalPositionBox6 = box6.position
        box6.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        box7 = childNode(withName: "box7") as! SKSpriteNode
        box7.physicsBody = SKPhysicsBody(rectangleOf: size)
        box7.physicsBody?.isDynamic = true
        box7.physicsBody?.affectedByGravity = true
        box7.physicsBody?.allowsRotation = true
        box7.physicsBody?.mass = 0.1
        originalPositionBox7 = box7.position
        box7.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        box8 = childNode(withName: "box8") as! SKSpriteNode
        box8.physicsBody = SKPhysicsBody(rectangleOf: size)
        box8.physicsBody?.isDynamic = true
        box8.physicsBody?.affectedByGravity = true
        box8.physicsBody?.allowsRotation = true
        box8.physicsBody?.mass = 0.1
        originalPositionBox8 = box8.position
        box8.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        box9 = childNode(withName: "box9") as! SKSpriteNode
        box9.physicsBody = SKPhysicsBody(rectangleOf: size)
        box9.physicsBody?.isDynamic = true
        box9.physicsBody?.affectedByGravity = true
        box9.physicsBody?.allowsRotation = true
        box9.physicsBody?.mass = 0.1
        originalPositionBox9 = box9.position
        box9.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        box10 = childNode(withName: "box10") as! SKSpriteNode
        box10.physicsBody = SKPhysicsBody(rectangleOf: size)
        box10.physicsBody?.isDynamic = true
        box10.physicsBody?.affectedByGravity = true
        box10.physicsBody?.allowsRotation = true
        box10.physicsBody?.mass = 0.1
        originalPositionBox10 = box10.position
        box10.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        box11 = childNode(withName: "box11") as! SKSpriteNode
        box11.physicsBody = SKPhysicsBody(rectangleOf: size)
        box11.physicsBody?.isDynamic = true
        box11.physicsBody?.affectedByGravity = true
        box11.physicsBody?.allowsRotation = true
        box11.physicsBody?.mass = 0.1
        originalPositionBox11 = box11.position
        box11.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        box12 = childNode(withName: "box12") as! SKSpriteNode
        box12.physicsBody = SKPhysicsBody(rectangleOf: size)
        box12.physicsBody?.isDynamic = true
        box12.physicsBody?.affectedByGravity = true
        box12.physicsBody?.allowsRotation = true
        box12.physicsBody?.mass = 0.1
        originalPositionBox12 = box12.position
        box12.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        box13 = childNode(withName: "box13") as! SKSpriteNode
        box13.physicsBody = SKPhysicsBody(rectangleOf: size)
        box13.physicsBody?.isDynamic = true
        box13.physicsBody?.affectedByGravity = true
        box13.physicsBody?.allowsRotation = true
        box13.physicsBody?.mass = 0.1
        originalPositionBox13 = box13.position
        box13.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
    
        box14 = childNode(withName: "box14") as! SKSpriteNode
        box14.physicsBody = SKPhysicsBody(rectangleOf: size)
        box14.physicsBody?.isDynamic = true
        box14.physicsBody?.affectedByGravity = true
        box14.physicsBody?.allowsRotation = true
        box14.physicsBody?.mass = 0.1
        originalPositionBox14 = box14.position
        box14.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        box15 = childNode(withName: "box15") as! SKSpriteNode
        box15.physicsBody = SKPhysicsBody(rectangleOf: size)
        box15.physicsBody?.isDynamic = true
        box15.physicsBody?.affectedByGravity = true
        box15.physicsBody?.allowsRotation = true
        box15.physicsBody?.mass = 0.1
        originalPositionBox15 = box15.position
        box15.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
    //pig
        let pigTexture = SKTexture(imageNamed: "creature")
        let pigSize = CGSize(width: pigTexture.size().width / 4.5, height: pigTexture.size().height / 4.5)
        
        pig1 = childNode(withName: "pig1") as! SKSpriteNode
        pig1.physicsBody = SKPhysicsBody(rectangleOf: pigSize)
        pig1.physicsBody?.isDynamic = true
        pig1.physicsBody?.affectedByGravity = true
        pig1.physicsBody?.allowsRotation = true
        pig1.physicsBody?.mass = 0.09
        originalPositionPig1 = pig1.position
        pig1.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        pig2 = childNode(withName: "pig2") as! SKSpriteNode
        pig2.physicsBody = SKPhysicsBody(rectangleOf: pigSize)
        pig2.physicsBody?.isDynamic = true
        pig2.physicsBody?.affectedByGravity = true
        pig2.physicsBody?.allowsRotation = true
        pig2.physicsBody?.mass = 0.09
        originalPositionPig2 = pig2.position
        pig2.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        pig3 = childNode(withName: "pig3") as! SKSpriteNode
        pig3.physicsBody = SKPhysicsBody(rectangleOf: pigSize)
        pig3.physicsBody?.isDynamic = true
        pig3.physicsBody?.affectedByGravity = true
        pig3.physicsBody?.allowsRotation = true
        pig3.physicsBody?.mass = 0.09
        originalPositionPig3 = pig3.position
        pig3.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        pig4 = childNode(withName: "pig4") as! SKSpriteNode
        pig4.physicsBody = SKPhysicsBody(rectangleOf: pigSize)
        pig4.physicsBody?.isDynamic = true
        pig4.physicsBody?.affectedByGravity = true
        pig4.physicsBody?.allowsRotation = true
        pig4.physicsBody?.mass = 0.09
        originalPositionPig4 = pig4.position
        pig4.physicsBody?.collisionBitMask = ColliderType.Bird.rawValue
        
        //label
        scoreLabel.fontName = "Helvetica"
        scoreLabel.fontColor = .black
        scoreLabel.fontSize = 50
        scoreLabel.text = "0"
        scoreLabel.position = CGPoint(x: 0, y: self.frame.height / 4)
        scoreLabel.zPosition = 2
        self.addChild(scoreLabel)
        
        highScoreLabel.fontName = "Helvetica"
        highScoreLabel.fontColor = .black
        highScoreLabel.fontSize = 30
        highScoreLabel.text = "0"
        highScoreLabel.position = CGPoint(x: -500, y: self.frame.height / 4)
        highScoreLabel.zPosition = 2
        self.addChild(highScoreLabel)
        
        
        let storedHighScore = UserDefaults.standard.object(forKey: "highScore")
        
        if storedHighScore == nil {
            highScore = 0
            highScoreLabel.text = "Higscore: \(highScore)"
        }
        if let newScore = storedHighScore as? Int
        {
            highScore = newScore
            highScoreLabel.text = "Highscore: \(highScore)"
        }
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        if contact.bodyA.collisionBitMask == ColliderType.Bird.rawValue || contact.bodyB.collisionBitMask == ColliderType.Bird.rawValue{
            score += 1
            scoreLabel.text = String(score)
        }
    }
    
    func touchDown(atPoint pos : CGPoint) {
 
    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {
   
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       // bird.physicsBody?.applyImpulse(CGVector(dx: 50, dy: 100))
       // bird.physicsBody?.affectedByGravity = true
        if gameStarted == false {
            if let touch = touches.first {
                let touchLocation = touch.location(in: self)
                let touchNodes = nodes(at: touchLocation)
                
                if touchNodes.isEmpty == false {
                    for node in touchNodes{
                        if let sprite = node as? SKSpriteNode{
                            if sprite == bird {
                                bird.position = touchLocation
                            }
                        }
                    }
                }
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if gameStarted == false {
            if let touch = touches.first {
                let touchLocation = touch.location(in: self)
                let touchNodes = nodes(at: touchLocation)
                
                if touchNodes.isEmpty == false {
                    for node in touchNodes{
                        if let sprite = node as? SKSpriteNode{
                            if sprite == bird {
                                bird.position = touchLocation
                            }
                        }
                    }
                }
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if gameStarted == false {
            if let touch = touches.first {
                let touchLocation = touch.location(in: self)
                let touchNodes = nodes(at: touchLocation)
                
                if touchNodes.isEmpty == false {
                    for node in touchNodes{
                        if let sprite = node as? SKSpriteNode{
                            if sprite == bird {
                                let dx = -(touchLocation.x - originalPosition!.x)
                                let dy = -(touchLocation.y - originalPosition!.y)
                                
                                let impulse = CGVector(dx: dx, dy: dy)
                                bird.physicsBody?.applyImpulse(impulse)
                                bird.physicsBody?.affectedByGravity = true
                                gameStarted = true
                            }
                        }
                    }
                }
            }
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
      
    }
    
    
    override func update(_ currentTime: TimeInterval) {
       
        if let birdPhysicsBody = bird.physicsBody {
            if birdPhysicsBody.velocity.dx <= 6 && birdPhysicsBody.velocity.dy <= 6 && birdPhysicsBody.angularVelocity <= 0.4 && gameStarted == true {
                
                bird.physicsBody?.affectedByGravity = false
                bird.physicsBody?.velocity = CGVector(dx: 0, dy: 0)
                bird.physicsBody?.angularVelocity = 0
                bird.zPosition = 3
                bird.position = originalPosition!
                box1.position = originalPositionBox1!
                box2.position = originalPositionBox2!
                box3.position = originalPositionBox3!
                box4.position = originalPositionBox4!
                box5.position = originalPositionBox5!
                box6.position = originalPositionBox6!
                box7.position = originalPositionBox7!
                box8.position = originalPositionBox8!
                box9.position = originalPositionBox9!
                box10.position = originalPositionBox10!
                box11.position = originalPositionBox11!
                box12.position = originalPositionBox12!
                box13.position = originalPositionBox13!
                box14.position = originalPositionBox14!
                box15.position = originalPositionBox15!
                pig1.position = originalPositionPig1!
                pig2.position = originalPositionPig2!
                pig3.position = originalPositionPig3!
                pig4.position = originalPositionPig4!

                
                score = 0
                scoreLabel.text = String(score)
                gameStarted = false
            }
        }
        if self.score > self.highScore {
            self.highScore = self.score
            highScoreLabel.text = "Highscore: \(self.highScore)"
            UserDefaults.standard.set(self.highScore, forKey: "highScore")
        }

    }
    
}
