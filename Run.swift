/*
* This program determines the run of a string.
*
* @author  Jonathan Pasco-Arnone
* @version 1.0
* @since   2021-12-09
*/

import Foundation

// Run.
func run(arrayOfString: [String], quantity: Int) throws -> Int {
    // Variables.
    var currentMaxCount: Int = 0

    for counterOne in 0..<quantity {
        var count = 0
        for counterTwo in 0..<quantity {
            if counterOne + counterTwo >= quantity {
                break
            } else {
                if arrayOfString[counterOne] == arrayOfString[counterOne + counterTwo] {
                    count += 1
                } else {
                    break
                }
            }
        }

        // If the current count is a new max count,
        // then it will replace the old one
        if count > currentMaxCount {
            currentMaxCount = count
        }
    }
    let run = currentMaxCount
    return run
}

// Inputs
print("Please enter some string to find the run from: ")
let text: String = readLine()!

let arrayOfString: [String] = text.map { String($0) }

print("\nCalculating stats...")
let runPrint = try run(arrayOfString: arrayOfString, quantity: arrayOfString.count)

print("The run is: ", runPrint)

print("\nDone.\n")
