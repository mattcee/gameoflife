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

        var newCell = self.cell
        let aliveNeighbors =  self.neighbors.filter { $0.life == .alive }

        if newCell.life == .alive && aliveNeighbors.count < 2 {
            newCell.life = .dead
        }
        if newCell.life == .alive && (aliveNeighbors.count == 2 || aliveNeighbors.count == 3) {
            newCell.life = .alive
        }
        if newCell.life == .alive && aliveNeighbors.count > 3 {
            newCell.life = .dead
        }
        if newCell.life == .dead && aliveNeighbors.count == 3 {
            newCell.life = .alive
        }

        return newCell
    }

}
