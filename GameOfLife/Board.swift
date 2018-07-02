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
        self.board = buildBoard()
    }
    
    private func buildBoard() -> [[Cell]] {
        var array = [[Cell]]()
        for _ in 0..<self.size {
            var row = [Cell]()
            for _ in 0..<self.size {
                row.append(Cell(life: .dead))
            }
            array.append(row)
        }
        return array
    }
    
    func printGame(board: [[Cell]]) {
        for x in 0..<self.board.count {
            var line = ""
            for y in 0..<self.board[x].count {
                line += board[y][x].life == .alive ? "1" : "0"
                line += " "
            }
            print(line)
        }

    }
    
    func updateState() {
        let neighborBuilder = NeighborsBuilder(gameBoard: self.board)
        var nextStateBoard = self.board
        for x in 0..<self.board.count {
            for y in 0..<self.board[x].count {
                let cell = self.board[x][y]
                let neighbors = neighborBuilder.getNeighbor(x: x, y: y)
                let rules = Rules(cell: cell, neighbors: neighbors)
                let newCell = rules.applyRules()
                nextStateBoard[x][y] = newCell
            }
        }
        self.board = nextStateBoard
    }

}
