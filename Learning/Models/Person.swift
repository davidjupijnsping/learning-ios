//
//  Person.swift
//  Learning
//
//  Created by David Jupijn on 07/10/2016.
//  Copyright © 2016 Sping BV. All rights reserved.
//

import UIKit

class Person: NSObject {
  var awesome = false
  var name = ""

  init(name: String, awesome: Bool) {
    super.init()

    self.name = name
    self.awesome = awesome
  }
  
  func says() -> String {
    return "ik ben\(awesome ? "" : " niet") awesome"
  }
}
