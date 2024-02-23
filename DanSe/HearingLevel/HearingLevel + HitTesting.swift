//
//  HearingLevel + HitTesting.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 29/01/24.
//

import Foundation
import ARKit
import UIKit

extension HearingLevel {
    func updateEyesCoordinates(){
        var newLeftEyeCoordinate : CGPoint = CGPoint()
        var newRightEyeCoordinate : CGPoint = CGPoint()
        
        let leftEyeResult = cameraNode.hitTestWithSegment(from: endPointLeftEye.worldPosition, to: leftEyeNode.worldPosition)
        
        let rightEyeResult = cameraNode.hitTestWithSegment(from: endPointRightEye.worldPosition, to: rightEyeNode.worldPosition)
        
        if(leftEyeResult.count > 0 || rightEyeResult.count > 0){
            guard let leftResult = leftEyeResult.first, let rightResult = rightEyeResult.first else {return}
            
            newLeftEyeCoordinate.x = CGFloat(leftResult.localCoordinates.x) /
            (Constants.deviceWidth / 2) * (safeWidth)
            
            newLeftEyeCoordinate.y = CGFloat(leftResult.localCoordinates.y) /
            (Constants.deviceHeight / 2) * (safeHeight)
            
            newRightEyeCoordinate.x = CGFloat(rightResult.worldCoordinates.x) /
            (Constants.deviceWidth / 2) * (safeWidth)
            
            newRightEyeCoordinate.y = CGFloat(rightResult.worldCoordinates.y) /
            (Constants.deviceHeight / 2) * (safeHeight)
            
            var point: CGPoint = {
                var point = CGPoint()
                let pointX = (newLeftEyeCoordinate.x + newRightEyeCoordinate.x) / 2
                let pointY = -(newLeftEyeCoordinate.y + newRightEyeCoordinate.y) / 2
                point.x = pointX.clamped(to: 0 ... safeWidth)
                point.y = pointY.clamped(to: 0 ... safeHeight)
                return point
            }()
            point.x = Utils.filter(point: point.x, filterVal: 0.75)
            point.y = Utils.filter(point: point.y, filterVal: 0.75)
            DispatchQueue.main.async {
                let currentTargetCoordinate = self.target.view.convert(self.target.view.center, to: self.view)
                let xHit : Bool = self.checkForHit(in: ((currentTargetCoordinate.x / 2) - self.targetWidth) ... ((currentTargetCoordinate.x / 2) + self.targetWidth) , point: point.x)
                let yHit : Bool = self.checkForHit(in: ((currentTargetCoordinate.y / 2) - self.targetHeight) ... ((currentTargetCoordinate.y / 2) + self.targetHeight) , point: point.y)
                
                if((xHit && yHit) && self.gameScore < 4){
                    self.gameScore += 1
                    self.randomizeTargetPosition()
                }
                else if(self.gameScore == 3){
                    self.sceneView.session.pause()
                    self.sceneView.removeFromSuperview()
                    self.delegate?.updateScore(completed: true)
                }
            }
            updateCrosshairPosition(newCoordinate: point)
        }
        
    }
    
    func updateCrosshairPosition(newCoordinate : CGPoint){
        DispatchQueue.main.async {
            UIView.animate(withDuration: 0.1) {
                self.crosshair.view.center = newCoordinate
            }
        }
    }
    
    
}
