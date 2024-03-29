//
//  ProgressingComponent.swift
//  Dromedary
//
//  Created by Mads Munk on 15/02/2021.
//  Copyright © 2021 Mads Munk. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class ProgressingComponent : GKComponent {
    var progress : Int = 0
    var name : String = ""
    var isActive : Bool = false
    var texture : SKTexture!
    var timer : Timer!
    let scene : Melody!
    
    init(scene : Melody) {
        self.scene = scene
        super.init()
        timer = Timer.scheduledTimer(withTimeInterval: 0.25, repeats: true, block: { timer in
            self.increment()
        })
        timer.fire()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func increment() {
        if isActive {
            progress += 1
        }
    }
}
