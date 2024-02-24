//
//  TouchLevelScene.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 28/01/24.
//

import UIKit
import SpriteKit
import AVFoundation

final class TouchLevelScene: SKScene {
    
    var targetNode : SKShapeNode?
    
    var currentNodePosition : CGPoint?
    
    var score : Int = 0
    
    var audioPlayer : AVAudioPlayer!
    
    var scorePublisher : TouchLevelHelper = TouchLevelHelper.shared
    
    var radius : CGFloat = 0
    
    override func didMove(to view: SKView) {
        setupScene()
        generateRandomNode()
    }
    
    func setupScene(){
        scaleMode = .aspectFit
        backgroundColor = .black
    }
    
    func playVibrate(){
        guard let fileUrl = Bundle.main.url(forResource: "vibrate-edited", withExtension: "mp3") else {return}
        
        do{
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            audioPlayer = try AVAudioPlayer(contentsOf: fileUrl, fileTypeHint: AVFileType.mp3.rawValue)
            audioPlayer.play()
        }
        catch{
            print(error.localizedDescription)
        }
    }
    
    @objc func nodeTapped(){
        print("Tapped")
    }
    
    func generateRandomNode(){
        radius = UIDevice.current.userInterfaceIdiom == .pad ? 250 : 100
        let xRange : SKRange = SKRange(lowerLimit: -((size.width / 2)) + radius, upperLimit: (size.width / 2) - radius)
        let yRange : SKRange = SKRange(lowerLimit: -((size.height / 2)) + radius, upperLimit: (size.height / 2) - radius)
        
        
        let randomX = CGFloat.random(in: xRange.lowerLimit ..< xRange.upperLimit)
        let randomY = CGFloat.random(in: yRange.lowerLimit ..< yRange.upperLimit)
        
        let randomNode : SKNode = SKNode()
        randomNode.position = CGPoint(x: randomX, y: randomY)
        
        let object = SKShapeNode(circleOfRadius: radius)
        object.fillColor = .black
        object.strokeColor = .black
        randomNode.addChild(object)
        
        addChild(randomNode)
        currentNodePosition = randomNode.position
    }
    
    func checkForTouches(point : CGPoint, touch : UITouch) -> Bool{
        let xCoord : CGFloat = point.x
        let yCoord : CGFloat = point.y
        
        let xRange : ClosedRange = (xCoord - radius - 15) ... (xCoord + radius + 15)
        let yRange : ClosedRange = (yCoord - radius - 15) ... (yCoord + radius + 15)
        
        let xTouch : CGFloat = touch.location(in: self).x
        let yTouch : CGFloat = touch.location(in: self).y
        
        if(xRange ~= xTouch && yRange ~= yTouch){
            return true
        }
        return false
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            guard let currentNodePosition else {return}
            if (checkForTouches(point: currentNodePosition, touch: touch)){
                scorePublisher.send()
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            guard let currentNodePosition else {return}
            if (checkForTouches(point: currentNodePosition, touch: touch)){
                playVibrate()
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            guard let currentNodePosition else {return}
            if (checkForTouches(point: currentNodePosition, touch: touch)){
                playVibrate()
            }
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            guard let currentNodePosition else {return}
            if (checkForTouches(point: currentNodePosition, touch: touch)){
                playVibrate()
            }
        }
    }
    
}
