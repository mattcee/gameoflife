//
//  Glider.swift
//  GameOfLife
//
//  Created by Matthew cai on 6/25/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class Glider: NSObject {
    
    var board: [[Cell]]

    
    init(with board: [[Cell]]) {
        self.board = board
    }
    
    func build(x: Int, y: Int) -> [[Cell]] {
        let size = self.board[0].count
        
        //top
        if y != 0 {
            let cell = Cell(life: .alive)
            self.board[x][y-1] = cell
        }
        // right
        if x != size - 1 {
            let cell = Cell(life: .alive)
            self.board[x+1][y] = cell
        }
        // Check cell on the bottom right.
        if x != size - 1 && y != size - 1 {
            let cell = Cell(life: .alive)
            self.board[x+1][y+1] = cell
        }
        // Check cell on the bottom.
        if y != size - 1 {
            let cell = Cell(life: .alive)
            self.board[x][y+1] = cell
        }
        // Check cell on the bottom left.
        if x != 0 && y != size - 1 {
            let cell = Cell(life: .alive)
            self.board[x-1][y+1] = cell
        }
        return self.board

    }

}
