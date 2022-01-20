//
//  AttributedString.swift
//  mySwiftUIApp
//
//  Created by OPSolutions on 1/18/22.
//

import Foundation
//import SwiftUI

func makeAttributedString() -> AttributedString {
      var string = AttributedString("Here's your first \nstep with us!")
      string.foregroundColor = .black
        
      if let range = string.range(of: "us!") {
          string[range].foregroundColor = .teal
      }
      return string
  }

