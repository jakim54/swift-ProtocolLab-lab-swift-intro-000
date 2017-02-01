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
            // used force unwrapped optional, but only because it passed isEmpty. Otherwise, IUO!
            if password.first! % 2 != 0 {
                return false
            } else {
                // use enumerated to ensure that every other number is even from the first. So index 2, 4, 6 should be even numbers. Not the entire thing. I think you can add +1 to filter condition. $0 + 1?
                let numOfPw = password.count
                let isItEven = password.filter { $0 % 2 == 0 }.count
                
                return isItEven == numOfPw ? true : false
            }
        }
    }
    
}

protocol ProvideAccess {
//     no body for functions in protocol functions. I guess because it's to be implemented with their own variations within classes and extensions following it?
//    static func someTypeMethod()
//    func random() -> Double
    
    func allowEntryWithPassword(password: [Int]) -> Bool
}


