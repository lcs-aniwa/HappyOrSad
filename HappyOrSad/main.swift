//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()

// Make sure the input was given ( create a String from the String?)
guard let input = rawInput else {
    // Error
    exit(9)
}

// Print out the input provided
print("You said:")
// print(rawInput) // optional String
print(input) // non-optional

// Process - inspect each character
var happyCount = 0
var sadCount = 0
for individualCharacter in input {
    
    // Debug
    print(individualCharacter)
    
    // Categorize the character
    if individualCharacter == "😃" || individualCharacter == "😊" || individualCharacter == "🙂" || individualCharacter == "😄" {
        // Track a happy
        happyCount += 1
    } else if individualCharacter == "🙁"  || individualCharacter == "☹️" || individualCharacter == "😔" || individualCharacter == "😕"  {
        // Track a sad
        sadCount += 1
    }
    
    
}
    


// Output
// Tell the user "happy", "sad", or "unsure" based o counts above

if happyCount == sadCount {
    print("unsure")
} else if happyCount > sadCount {
    print("happy")
} else if sadCount > happyCount {
    print("sad")
} else if happyCount == 0 && sadCount == 0 {
    print ("none")
}



