//
//  GameViewController.swift
//  Eventyr V2
//
//  Created by Mads Munk on 13/02/2020.
//  Copyright © 2020 Mads Munk. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class EventyrViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
        // including entities and graphs.
        if let scene = GKScene(fileNamed: "Eventyr") {
            
            // Get the SKScene from the loaded GKScene
            if let sceneNode = scene.rootNode as! Eventyr? {
                
                // Copy gameplay related content over to the scene
                sceneNode.entities = scene.entities
                sceneNode.graphs = scene.graphs
                
                // Set the scale mode to scale to fit the window
                sceneNode.scaleMode = .aspectFill
                sceneNode.viewController = self
                
                // Present the scene
                if let view = self.view as! SKView? {
                    view.presentScene(sceneNode)
                    
                    view.ignoresSiblingOrder = true
                    view.preferredFramesPerSecond = 25
                    view.showsFPS = true
                    view.showsNodeCount = true
                    view.showsPhysics = false
                }
            }
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
