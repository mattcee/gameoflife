//
//  Cell.swift
//  GameOfLife
//
//  Created by Matthew cai on 6/24/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa


enum LifeType {
    case alive, dead
}

class Cell: NSObject {
    
    var life: LifeType
    
    override init() {
        self.life = .dead
    }

}
