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
    var balance : Double = 0
    
    init(withStatement statement : Statement){
        self.statement = statement
    }
    
    func deposit(amount : Double, onDate date : String){
        saveTransaction(amount, onDate: date)
    }
    
    func withdraw(amount : Double, onDate date : String){
        saveTransaction(-amount, onDate: date)
    }
    
    private func saveTransaction(amount : Double, onDate date : String){
        let newBalance = balance + amount
        statement.addLineWithTransaction(Transaction(withAmount: amount, onDate: date), withBalance: newBalance)
        balance = newBalance
    }
    
    func printStatementTo(printer : Printer){
        
    }
}