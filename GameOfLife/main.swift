//
//  main.swift
//  GameOfLife
//
//  Created by Matthew cai on 6/24/18.
//  Copyright © 2018 Matthew cai. All rights reserved.
//

import Foundation

print("Hello, World!")

let gameBoard = Board(with: 10)
gameBoard.generate()
let glider = Glider(with: gameBoard.board)
gameBoard.board = glider.build()
gameBoard.printBoard()
