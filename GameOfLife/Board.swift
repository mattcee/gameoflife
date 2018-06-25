//
//  Board.swift
//  GameOfLife
//
//  Created by Matthew cai on 6/24/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Cocoa

class Board: NSObject {
    
    var size: Int
    
    var board = [[Cell]]()
    
    init(with size: Int) {
        self.size = size
    }
    
    func generate() {
        for _ in 0..<self.size {
            var row = [Cell]()
            for _ in 0..<self.size {
                row.append(Cell())
            }
            self.board.append(row)
        }
    }
    
    func printBoard() {
        for x in 0..<self.size {
            var line = ""
            for y in 0..<self.size {
                line += String(describing: self.board[x][y].life)
                line += " "
            }
            print(line)
        }
    }

}