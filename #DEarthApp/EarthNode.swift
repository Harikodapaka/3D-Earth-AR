//
//  EarthNode.swift
//  #DEarthApp
//
//  Created by Chaitanya Kodapaka on 2019-07-24.
//  Copyright © 2019 Earth. All rights reserved.
//

import UIKit
import SceneKit

class EarthNode: SCNNode {
    override init(){
        super.init()
        self.geometry  = SCNSphere(radius: 1)
//        self.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        self.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "Diffuse")
        self.geometry?.firstMaterial?.emission.contents = UIImage(named: "Emission")
        self.geometry?.firstMaterial?.normal.contents = UIImage(named: "Normal")
        self.geometry?.firstMaterial?.specular.contents = UIImage(named: "Specular")
        
        self.geometry?.firstMaterial?.shininess = 50
        
        let action = SCNAction.rotate(by: 360 * CGFloat(Double.pi / 100), around: SCNVector3(0,1,0), duration: 8)
        
        let repeatAction = SCNAction.repeatForever(action)
        
        self.runAction(repeatAction)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    

}
