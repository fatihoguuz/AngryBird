//
//  GameScene.swift
//  AngryBird
//
//  Created by Fatih Oğuz on 3.05.2024.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
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
    
    var pig1 = SKSpriteNode()
    var pig2 = SKSpriteNode()
    var pig3 = SKSpriteNode()
    
    override func didMove(to view: SKView) {
    //physics body
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.scene?.scaleMode = .aspectFit
        
    //bird
        bird = childNode(withName: "bird") as! SKSpriteNode
        let birdTexture = SKTexture(imageNamed: "bird")
        
        bird.physicsBody = SKPhysicsBody(circleOfRadius: birdTexture.size().height / 13)
        bird.physicsBody?.affectedByGravity = true
        bird.physicsBody?.isDynamic = true
        bird.physicsBody?.mass = 0.5
    //box
        let boxTexture = SKTexture(imageNamed: "block")
        let size = CGSize(width: boxTexture.size().width / 6, height: boxTexture.size().height / 6)
        
        box1 = childNode(withName: "box1") as! SKSpriteNode
        box1.physicsBody = SKPhysicsBody(rectangleOf: size)
        box1.physicsBody?.isDynamic = true
        box1.physicsBody?.affectedByGravity = true
        box1.physicsBody?.allowsRotation = true
        box1.physicsBody?.mass = 0.4
        
        box2 = childNode(withName: "box2") as! SKSpriteNode
        box2.physicsBody = SKPhysicsBody(rectangleOf: size)
        box2.physicsBody?.isDynamic = true
        box2.physicsBody?.affectedByGravity = true
        box2.physicsBody?.allowsRotation = true
        box2.physicsBody?.mass = 0.4
        
        box3 = childNode(withName: "box3") as! SKSpriteNode
        box3.physicsBody = SKPhysicsBody(rectangleOf: size)
        box3.physicsBody?.isDynamic = true
        box3.physicsBody?.affectedByGravity = true
        box3.physicsBody?.allowsRotation = true
        box3.physicsBody?.mass = 0.4
    
        box4 = childNode(withName: "box4") as! SKSpriteNode
        box4.physicsBody = SKPhysicsBody(rectangleOf: size)
        box4.physicsBody?.isDynamic = true
        box4.physicsBody?.affectedByGravity = true
        box4.physicsBody?.allowsRotation = true
        box4.physicsBody?.mass = 0.4
        
        box5 = childNode(withName: "box5") as! SKSpriteNode
        box5.physicsBody = SKPhysicsBody(rectangleOf: size)
        box5.physicsBody?.isDynamic = true
        box5.physicsBody?.affectedByGravity = true
        box5.physicsBody?.allowsRotation = true
        box5.physicsBody?.mass = 0.4
        
        box6 = childNode(withName: "box6") as! SKSpriteNode
        box6.physicsBody = SKPhysicsBody(rectangleOf: size)
        box6.physicsBody?.isDynamic = true
        box6.physicsBody?.affectedByGravity = true
        box6.physicsBody?.allowsRotation = true
        box6.physicsBody?.mass = 0.4
        
        box7 = childNode(withName: "box7") as! SKSpriteNode
        box7.physicsBody = SKPhysicsBody(rectangleOf: size)
        box7.physicsBody?.isDynamic = true
        box7.physicsBody?.affectedByGravity = true
        box7.physicsBody?.allowsRotation = true
        box7.physicsBody?.mass = 0.4
        
        box8 = childNode(withName: "box8") as! SKSpriteNode
        box8.physicsBody = SKPhysicsBody(rectangleOf: size)
        box8.physicsBody?.isDynamic = true
        box8.physicsBody?.affectedByGravity = true
        box8.physicsBody?.allowsRotation = true
        box8.physicsBody?.mass = 0.4
        
        box9 = childNode(withName: "box9") as! SKSpriteNode
        box9.physicsBody = SKPhysicsBody(rectangleOf: size)
        box9.physicsBody?.isDynamic = true
        box9.physicsBody?.affectedByGravity = true
        box9.physicsBody?.allowsRotation = true
        box9.physicsBody?.mass = 0.4
        
        box10 = childNode(withName: "box10") as! SKSpriteNode
        box10.physicsBody = SKPhysicsBody(rectangleOf: size)
        box10.physicsBody?.isDynamic = true
        box10.physicsBody?.affectedByGravity = true
        box10.physicsBody?.allowsRotation = true
        box10.physicsBody?.mass = 0.4
        
    //pig
        let pigTexture = SKTexture(imageNamed: "pig")
        let pigSize = CGSize(width: boxTexture.size().width / 5, height: boxTexture.size().height / 5)
        
        pig1 = childNode(withName: "pig1") as! SKSpriteNode
        pig1.physicsBody = SKPhysicsBody(rectangleOf: pigSize)
        pig1.physicsBody?.isDynamic = true
        pig1.physicsBody?.affectedByGravity = true
        pig1.physicsBody?.allowsRotation = true
        pig1.physicsBody?.mass = 0.4
        
        pig2 = childNode(withName: "pig2") as! SKSpriteNode
        pig2.physicsBody = SKPhysicsBody(rectangleOf: pigSize)
        pig2.physicsBody?.isDynamic = true
        pig2.physicsBody?.affectedByGravity = true
        pig2.physicsBody?.allowsRotation = true
        pig2.physicsBody?.mass = 0.4
        
        pig3 = childNode(withName: "pig3") as! SKSpriteNode
        pig3.physicsBody = SKPhysicsBody(rectangleOf: pigSize)
        pig3.physicsBody?.isDynamic = true
        pig3.physicsBody?.affectedByGravity = true
        pig3.physicsBody?.allowsRotation = true
        pig3.physicsBody?.mass = 0.4
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
 
    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {
   
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
      
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
