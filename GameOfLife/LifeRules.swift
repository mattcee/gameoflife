//
//  LifeRules.swift
//  GameOfLife
//
//  Created by Matthew cai on 6/25/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class LifeRules: NSObject {
    
    var neighbors: [Cell]
    
    init(neighbors: [Cell]) {
        self.neighbors = neighbors
    }
    
    // any live cell with two or three live neighbors lives on to next generation
    func shouldLive(cell: Cell) -> Cell {
        var tempCell = cell
        if tempCell.life == .alive {
            let aliveCells = self.neighbors.filter { $0.life == .alive }
            if aliveCells.count == 2 || aliveCells.count == 3 {
                tempCell.life = .alive
            }
        }
        return cell
    }
    
    // Dead cell with exactly three live neighbours becomes a live cell
    func shouldBeReborn(cell: Cell) -> Cell {
        var tempCell = cell
        if tempCell.life == .dead {
            let aliveCells = self.neighbors.filter { $0.life == .alive }
            if aliveCells.count == 3 {
                tempCell.life = .alive
            }
        }
        return cell
    }
    

}
