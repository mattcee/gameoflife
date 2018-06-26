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
        let deathRules = DeathRules(neighbors: self.neighbors)
        let lifeRules = LifeRules(neighbors: self.neighbors)
        var newCell = self.cell
        newCell = deathRules.underPopulationCheck(cell: newCell)
        newCell = lifeRules.shouldLive(cell: newCell)
        newCell = deathRules.overPopulationCheck(cell: newCell)
        newCell = lifeRules.shouldBeReborn(cell: newCell)
        return cell
    }

}
