//
//  EatingComponent.swift
//  Dromedary
//
//  Created by Mads Munk on 18/02/2021.
//  Copyright © 2021 Mads Munk. All rights reserved.
//

import Foundation
import GameplayKit
import SpriteKit

class EatingComponent : GKComponent {
    let eatingTolerence : CGFloat = 50
    let scene : Melody!
    var isEating : Bool = false
    let tongueTex : SKTexture = SKTexture(imageNamed: "FrøMedTungeMørk")
    let noTongueTex : SKTexture = SKTexture(imageNamed: "FrøUdenTungeMørk")
    var eatingCount : TimeInterval = 1
    
    init(scene : Melody) {
        self.scene = scene
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
