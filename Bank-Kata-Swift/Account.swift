//
//  Account.swift
//  Bank-Kata-Swift
//
//  Created by Tomás Ruiz López on 24/4/16.
//  Copyright © 2016 Tomás Ruiz López. All rights reserved.
//

import Foundation

class Account {
    let statement : Statement
    
    init(withStatement statement : Statement){
        self.statement = statement
    }
    
    func deposit(amount : Double, onDate date : String){
        statement.addLineWithTransaction(Transaction(withAmount: amount, onDate: date), withBalance: amount)
    }
    
    func withdraw(amount : Double, onDate date : String){
        statement.addLineWithTransaction(Transaction(withAmount: -amount, onDate: date), withBalance: -amount)
    }
    
    func printStatementTo(printer : Printer){
        
    }
}