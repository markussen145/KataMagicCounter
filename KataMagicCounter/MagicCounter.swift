//
//  MagicCounter.swift
//  KataMagicCounter
//
//  Created by Fernando Gil Otero on 12/12/2019.
//  Copyright © 2019 Fernando Gil Otero. All rights reserved.
//

import Foundation

class MagicCounter {
private let storage: CounterStorage
private let randomGenerator: RandomNumberGenerator

init(storage: CounterStorage, randomGenerator: RandomNumberGenerator) {
    self.storage = storage
    self.randomGenerator = randomGenerator
    var test
}

func increase() -> Int {
    let currentCounter = storage.get() ?? 0
    let randomValue = randomGenerator.randomValue()
    let updatedCounter = randomValue > 100 ? currentCounter + randomValue : currentCounter + 1
    storage.save(counter: updatedCounter)
    return updatedCounter
}

    func decrease() -> Int {
        let currentStorageValue = storage.get() ?? 0
        let updatedCounter = currentStorageValue - 1
        storage.save(counter: updatedCounter)
        return updatedCounter
    }
}
