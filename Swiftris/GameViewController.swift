//
//  GameViewController.swift
//  Swiftris
//
//  Created by Bradley Vidler on 2014-09-30.
//  Copyright (c) 2014 Bradley Vidler. All rights reserved.
//

import UIKit
import SpriteKit



class GameViewController: UIViewController {
    
    var scene: GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configure the view
        let skView = self.view as SKView
        skView.multipleTouchEnabled = false
        
        //create and configure the scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        //present the scene
        skView.presentScene(scene)
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
