//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault: ProvideAccess {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
    func allowEntryWithPassword(password: [Int]) -> Bool {
        if password.count > 10 || password.isEmpty {
            return false
        } else {
            if password.first! % 2 != 0 {
                return false
            } else {
                let confirmation = password.contains { $0 % 2 == 0 }
                return confirmation
            }
        }
    } // end of function
    
}

protocol ProvideAccess {
    func allowEntryWithPassword(password: [Int]) -> Bool
}
