//  Created by Alexander Matheson
//  Created on 2023-Feb-10
//  Version 1.0
//  Copyright (c) 2023 Alexander Matheson. All rights reserved.
//
//  This program calculates the volume of a sphere

// Declare variables
var radius = 0.0
var volume = 0.0
var strData = ""

// Set pi constant
import Foundation
let pi = Double.pi

// Enum for error checking
enum InputError: Error {
  case InvalidInput
}

// Input in separate function for error checking
func input() throws -> Double {
  print("Please enter your radius in m:")
  strData = readLine()!
  guard let number = Double(strData.trimmingCharacters(in: CharacterSet.newlines)) else {
    throw InputError.InvalidInput
  }
  return number
}

//Check Input
do {
  let radius = try input()
  if (radius >= 0) {
    volume = (4.0 / 3.0) * pi * pow(radius, 3);
    print("The volume is", round(volume * 100) / 100.0, "m^3.")
  } else {
    print("That is negative.")
  }
} catch InputError.InvalidInput {
  print("Error: Invalid input")
}
