//
//  main.swift
//  GameOfLife
//
//  Created by Matthew cai on 6/24/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Foundation

print("Hello, World!")

let size = 10
let gameBoard = Board(with: size)
gameBoard.generate()
let glider = Glider(with: gameBoard.board)
gameBoard.board = glider.build(x: size / 2, y: size / 2)
gameBoard.printBoard()



func readLineLoop() {
    print("Please enter some input\n")
    if let _ = readLine() {
        gameBoard.updateState()
        gameBoard.printBoard()
        readLineLoop()
    }
}

readLineLoop()
