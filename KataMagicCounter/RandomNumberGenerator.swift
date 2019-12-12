//
//  RandomNumberGenerator.swift
//  KataMagicCounter
//
//  Created by Fernando Gil Otero on 12/12/2019.
//  Copyright © 2019 Fernando Gil Otero. All rights reserved.
//

import Foundation


protocol RandomNumberGenerator {
    func randomValue() -> Int
}

class SystemRandomNumbergenerator {
    func randomValue() -> Int {
        return Int.random(in: Int.min...Int.max)
    }
}
