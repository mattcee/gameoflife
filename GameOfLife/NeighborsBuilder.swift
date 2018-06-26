//
//  NeighborsBuilder.swift
//  GameOfLife
//
//  Created by Matthew cai on 6/25/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class NeighborsBuilder: NSObject {
    
    var gameBoard: [[Cell]]
    
    init(gameBoard: [[Cell]]) {
        self.gameBoard = gameBoard
    }
    
    func getNeighbor(x: Int, y: Int) -> [Cell] {
        let size = self.gameBoard[0].count
        var neighbors = [Cell]()
        // Check cell on the right
        if x != size - 1 {
            let cell = self.gameBoard[x + 1][y]
            neighbors.append(cell)
        }
        // Check cell on the bottom right.
        if x != size - 1 && y != size - 1 {
            let cell = self.gameBoard[x+1][y+1]
            neighbors.append(cell)
        }
        // Check cell on the bottom.
        if y != size - 1 {
            let cell = self.gameBoard[x][y+1]
            neighbors.append(cell)
        }
        // Check cell on the bottom left.
        if x != 0 && y != size - 1 {
            let cell = self.gameBoard[x-1][y+1]
            neighbors.append(cell)
        }
        // Check cell on the left.
        if x != 0 {
            let cell = self.gameBoard[x-1][y]
            neighbors.append(cell)
        }
        // Check cell on the top left.
        if x != 0 && y != 0 {
            let cell = self.gameBoard[x-1][y-1]
            neighbors.append(cell)
        }
        // Check cell on the top.
        if y != 0 {
            let cell = self.gameBoard[x][y-1]
            neighbors.append(cell)
        }
        // Check cell on the top right.
        if x != size - 1 && y != 0 {
            let cell = self.gameBoard[x+1][y-1]
            neighbors.append(cell)
        }
        
        return neighbors
        
    }

}
