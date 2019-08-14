//
//  ViewController.swift
//  #DEarthApp
//
//  Created by Chaitanya Kodapaka on 2019-07-24.
//  Copyright © 2019 Earth. All rights reserved.
//


import UIKit
import SceneKit


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = SCNScene()
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 5)
        
        scene.rootNode.addChildNode(cameraNode)
        
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(x: 10,y:0,z:2)
        scene.rootNode.addChildNode(lightNode)
        
        let starsNode = SCNParticleSystem(named: "SkitParticle.scnp", inDirectory: nil)!
        scene.rootNode.addParticleSystem(starsNode)
        
        let earthNode = EarthNode()
        scene.rootNode.addChildNode(earthNode)
        
        
        let sceneView = self.view as! SCNView
        sceneView.scene = scene
        
        sceneView.showsStatistics = true
        sceneView.backgroundColor = UIColor.black
        sceneView.allowsCameraControl = true
        
    }
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
}
