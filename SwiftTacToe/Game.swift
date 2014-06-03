//
//  Game.swift
//  SwiftTacToe
//
//  Created by Nate Armstrong on 6/2/14.
//  Copyright (c) 2014 Nate Armstrong. All rights reserved.
//

import UIKit

class Game: NSObject {
  var buttons: STTButton[]
  var turn: STTButton.Player = STTButton.Player.First

  init(buttons: UIButton[]) {
    self.buttons = []
    for button in buttons {
      self.buttons.append(STTButton())
    }
    super.init()
  }

  func pressButton(index: Int) {
    var button = buttons[index]
    if !button.active {
      button.setActiveForPlayer(turn)
      switchTurn()
    }
  }

  func switchTurn() {
    switch turn {
    case .First:
      turn = .Second
    case .Second:
      turn = .First
    default:
      turn = .First
    }
  }

  func buttonAtIndex(index: Int) -> STTButton {
    return self.buttons[index]
  }

  func clear() {
    for button in buttons {
      button.active = false
    }
    turn = .First
  }
}
