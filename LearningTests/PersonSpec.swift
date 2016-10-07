//
//  DavidSpec.swift
//  Learning
//
//  Created by David Jupijn on 07/10/2016.
//  Copyright © 2016 Sping BV. All rights reserved.
//

import Quick
import Nimble

class PersonSpec: QuickSpec {

  override func spec() {
    describe("Sping people") {
      it("has everything you need to get started") {

      }

      context("David") {
        let david = Person(name: "David", awesome: true)

        beforeEach {
        }

        it("says") {
          expect{david.says()}.to(equal("What up bitches?!"))
        }

        it("to be awesome") {
          expect{(david.awesome)}.to(beTrue())
        }
      }

      context("Sebastiaan") {
        let sebas = Person(name: "Sebastiaan", awesome: false)

        beforeEach {
        }


        it("to not be awesome") {
          expect{(sebas.awesome)}.to(beFalse())
        }
      }
    }
  }
}
