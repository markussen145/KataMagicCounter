//
//  Storage.swift
//  KataMagicCounter
//
//  Created by Fernando Gil Otero on 12/12/2019.
//  Copyright © 2019 Fernando Gil Otero. All rights reserved.
//

import Foundation

class Storage{
    
    func save(value: Int) {
        UserDefaults.standard.set(value, forKey: "valueKey")
    }
    
    func get() -> Int? {
        return UserDefaults.standard.integer(forKey: "valueKey")
    }
    
    func clear() {
        UserDefaults.standard.removeObject(forKey: "valuekey")
    }
}
