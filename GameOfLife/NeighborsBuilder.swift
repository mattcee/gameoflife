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
        
        //  left
        if x != 0 {
            let cell = self.gameBoard[x-1][y]
            neighbors.append(cell)
        }
        
        //  right
        if x != size - 1 {
            let cell = self.gameBoard[x + 1][y]
            neighbors.append(cell)
        }
        // bottom right
        if x != size - 1 && y != size - 1 {
            let cell = self.gameBoard[x+1][y+1]
            neighbors.append(cell)
        }
        // bottom
        if y != size - 1 {
            let cell = self.gameBoard[x][y+1]
            neighbors.append(cell)
        }
        // bottom left
        if x != 0 && y != size - 1 {
            let cell = self.gameBoard[x-1][y+1]
            neighbors.append(cell)
        }

        // top left
        if x != 0 && y != 0 {
            let cell = self.gameBoard[x-1][y-1]
            neighbors.append(cell)
        }
        //  top
        if y != 0 {
            let cell = self.gameBoard[x][y-1]
            neighbors.append(cell)
        }
        //  top right
        if x != size - 1 && y != 0 {
            let cell = self.gameBoard[x+1][y-1]
            neighbors.append(cell)
        }
        
        return neighbors
        
    }

}
