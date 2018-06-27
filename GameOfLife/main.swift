//
//  main.swift
//  GameOfLife
//
//  Created by Matthew cai on 6/24/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Foundation


let size = 25
let gameBoard = Board(with: size)
gameBoard.generate()
let glider = Glider(with: gameBoard.board)
gameBoard.board = glider.build(x: size / 2, y: size / 2)
gameBoard.printGame(board: gameBoard.board)



func readLineLoop() {
    print("Please enter some input\n")
    if let _ = readLine() {
        gameBoard.updateState()
        gameBoard.printGame(board: gameBoard.board)
        readLineLoop()
    }
}

readLineLoop()
