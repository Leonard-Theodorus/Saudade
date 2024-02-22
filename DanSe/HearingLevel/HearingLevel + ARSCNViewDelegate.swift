//
//  HearingLevel + ARSCNViewDelegate.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 29/01/24.
//

import Foundation
import ARKit
import UIKit

extension HearingLevel : ARSCNViewDelegate{
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        
        guard let device = sceneView.device else {return nil}
        
        let faceGeometry = ARSCNFaceGeometry(device: device)
        let faceNode = SCNNode(geometry: faceGeometry)
        faceNode.geometry?.firstMaterial?.transparency = 0
        
        faceNode.addChildNode(leftEyeNode)
        leftEyeNode.addChildNode(endPointLeftEye)
        
        faceNode.addChildNode(rightEyeNode)
        rightEyeNode.addChildNode(endPointRightEye)
        
        return faceNode
    }
    
    func renderer(_ renderer: SCNSceneRenderer, didUpdate node: SCNNode, for anchor: ARAnchor) {
        
        guard let faceAnchor = anchor as? ARFaceAnchor, let faceGeometry = node.geometry
                as? ARSCNFaceGeometry else {return}
        
        leftEyeNode.simdTransform = faceAnchor.leftEyeTransform
        rightEyeNode.simdTransform = faceAnchor.rightEyeTransform
        
        
        faceGeometry.update(from: faceAnchor.geometry)
        updateEyesCoordinates()
    }
    
    
}
