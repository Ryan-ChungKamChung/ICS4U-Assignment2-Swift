//
//  MaxRun.swift
//
//  Created by Ryan Chung
//  Created on 2021-12-09
//  Version 1.0
//  Copyright (c) 2021 Ryan Chung. All rights reserved.
//
//  This is a program that finds the largest run in the string.
//

import Foundation

// This functions calculates the max run and returns it.
func maxRun(userInput: String) -> Int {

    var count = 0
    var maxCount = 0
    var previous: Character = " "

    // Counts how many consecutive occurrences
    // for every character in userInput
    for character in Array(userInput) {
        if character == previous {
            count += 1
        } else {
            count = 1
            previous = character
        }

        if count > maxCount {
            maxCount = count
        }
    }

    return maxCount
}

// User Input
print("Enter a string: ", terminator: "")
let userInput = readLine()!

// Calls maxRun() to get the max run
let maxRunValue = maxRun(userInput: userInput)
// Outputs it to the user
print("Max Run: \(maxRunValue)")

print("\nDone.")
