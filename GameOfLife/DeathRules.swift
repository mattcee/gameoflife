//
//  DeathRules.swift
//  GameOfLife
//
//  Created by Matthew cai on 6/25/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class DeathRules: NSObject {
    
    var neighbors: [Cell]
    
    init(neighbors: [Cell]) {
        self.neighbors = neighbors
    }
    
    // live cell with fewer than two live neighbors die
    func underPopulationCheck(cell: Cell) -> Cell {
        var tempCell = cell
        if cell.life == .alive {
            let aliveCells = self.neighbors.filter { $0.life == .alive }
            if aliveCells.count < 2 {
                tempCell.life = .dead
            }
        }
        return tempCell
    }
    
    // live cell with more than three live neighbor dies
    func overPopulationCheck(cell: Cell) -> Cell {
        var tempCell = cell
        if tempCell.life == .alive {
            let aliveCells = self.neighbors.filter { $0.life == .alive }
            if aliveCells.count > 3 {
                tempCell.life = .dead
            }
        }
        return tempCell
    }

}
