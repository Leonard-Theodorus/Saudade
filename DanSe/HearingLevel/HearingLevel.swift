////
////  Level2.swift
////  DanSe
////
////  Created by Alonica🐦‍⬛🐺 on 28/01/24.
////
//
import Foundation
import ARKit
import UIKit
import SwiftUI

class HearingLevel : UIViewController{
    
    var sceneView : ARSCNView!
    
    let config = ARFaceTrackingConfiguration()
    
    let crosshair = UIHostingController(rootView: Crosshair())
    
    let target = UIHostingController(rootView: Target())
    
    var gameScore : Int = 0
    
    weak var delegate : HearingLevelUpdateDelegate?
    
    var backgroundView : UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "level2")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    var leftEyeNode : SCNNode = {
        let geometry = SCNCone(topRadius: 0.005, bottomRadius: 0, height: 0.1)
        geometry.radialSegmentCount = 3
        geometry.firstMaterial?.transparency = 0
        let node = SCNNode(geometry: geometry)
        node.eulerAngles.x = -.pi / 2
        node.position.z = 0.1
        let parentNode = SCNNode()
        parentNode.addChildNode(node)
        return parentNode
    }()
    
    var rightEyeNode : SCNNode = {
        let geometry = SCNCone(topRadius: 0.005, bottomRadius: 0, height: 0.1)
        geometry.radialSegmentCount = 3
        geometry.firstMaterial?.transparency = 0
        let node = SCNNode(geometry: geometry)
        node.eulerAngles.x = -.pi / 2
        node.position.z = 0.1
        let parentNode = SCNNode()
        parentNode.addChildNode(node)
        return parentNode
    }()
    
    var endPointLeftEye : SCNNode = {
        let node = SCNNode()
        node.position.z = 2
        return node
    }()
    
    var endPointRightEye : SCNNode = {
        let node = SCNNode()
        node.position.z = 2
        return node
    }()
    
    var cameraNode : SCNNode = {
        let screenGeometry = SCNPlane(width: 1, height: 1)
        screenGeometry.firstMaterial?.isDoubleSided = true
        let planeNode = SCNNode()
        planeNode.geometry = screenGeometry
        return planeNode
    }()
    
    var safeHeight : CGFloat = 0
    var safeWidth : CGFloat = 0
    
    var (targetWidth, targetHeight) : (CGFloat, CGFloat) = UIDevice.current.userInterfaceIdiom == .pad ? (50, 50) : (20, 20)
    
    override func viewDidLoad() {
        DispatchQueue.main.async {
            self.safeHeight = self.view.bounds.height
            self.safeWidth = self.view.bounds.width
            print(self.safeWidth, Constants.frameHeight)
        }
        guard ARFaceTrackingConfiguration.isSupported else {return}
        setupARScene()
        setupConstraints()
        randomizeTargetPosition()
        sceneView.pointOfView?.addChildNode(cameraNode)
        config.isLightEstimationEnabled = true
        sceneView.session.run(config)
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //TODO: Ilangin semua view (Crosshair + targetnya) kecuali maybe backgroundnya nanti
        cleanUpView()
    }
    
    func setupARScene(){
        sceneView = ARSCNView()
        sceneView.delegate = self
        sceneView.scene.background.contents = UIColor.clear
        sceneView.backgroundColor = .LG_1.withAlphaComponent(0.5)
        view.addSubview(sceneView)
        sceneView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            sceneView.topAnchor.constraint(equalTo: view.topAnchor),
            sceneView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sceneView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            sceneView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    func setupConstraints(){
        view.addSubview(backgroundView)
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        view.addSubview(crosshair.view)
        crosshair.view.translatesAutoresizingMaskIntoConstraints = false
        crosshair.view.center = view.center
        crosshair.view.backgroundColor = .clear
        NSLayoutConstraint.activate([
            crosshair.view.topAnchor.constraint(equalTo: view.topAnchor),
            crosshair.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            crosshair.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            crosshair.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func checkForHit(in range : ClosedRange<CGFloat>, point : CGFloat) -> Bool{
        if(range ~= point){
            return true
        }
        return false
    }
    
    func randomizeTargetPosition(){
        
        DispatchQueue.main.async {
            if(!self.target.view.isDescendant(of: self.view)){
                self.view.addSubview(self.target.view)
            }
            //MARK: Size target
            let (width, height) = UIDevice.current.userInterfaceIdiom == .pad ? (200, 200) : (100, 100)
            let newXCoordinate = CGFloat.random(in: CGFloat(width) ... Constants.frameWidth - CGFloat(width))
            let newYCoordinate = CGFloat.random(in: CGFloat(height) ... Constants.frameHeight - CGFloat(height))
            UIView.animate(withDuration: 0.1) {
                self.target.view.frame = CGRect(x: newXCoordinate, y: newYCoordinate, width: self.target.view.frame.width, height: self.target.view.frame.height)
            }
        }
    }
    
    func cleanUpView(){
        self.crosshair.view.removeFromSuperview()
        self.target.view.removeFromSuperview()
        self.target.removeFromParent()
        self.crosshair.removeFromParent()
        self.sceneView = nil
    }
    
}




