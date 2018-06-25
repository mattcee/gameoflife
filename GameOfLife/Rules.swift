//
//  Rules.swift
//  GameOfLife
//
//  Created by Matthew cai on 6/25/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class Rules: NSObject {
    
    var cell: Cell
    var neighbors: [Cell]
    
    init(cell: Cell, neighbors: [Cell]) {
        self.cell = cell
        self.neighbors = neighbors
    }
    
    func applyRules() -> Cell {
        let deathRules = DeathRules(neighbors: neighbors)
        let lifeRules = LifeRules(neighbors: neighbors)
        return cell
    }

}
