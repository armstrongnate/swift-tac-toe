//
//  STTButton.swift
//  SwiftTacToe
//
//  Created by Nate Armstrong on 6/2/14.
//  Copyright (c) 2014 Nate Armstrong. All rights reserved.
//

import UIKit

class STTButton: NSObject {
  enum Player: Int {
    case First
    case Second
    func label() -> String {
      switch self {
        case .First:
          return "X"
        case .Second:
          return "O"
      }
    }
    func color() -> UIColor {
      switch self {
        case .First:
          return UIColor.redColor()
        case .Second:
          return UIColor.blackColor()
        default: return UIColor.redColor()
      }
    }
  }

  var active: Bool = false
  var player: Player? = nil

  init() {}

  func setActiveForPlayer(player: Player) {
    self.active = true
    self.player = player
  }

}
