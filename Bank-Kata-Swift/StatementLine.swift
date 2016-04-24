//
//  StatementLine.swift
//  Bank-Kata-Swift
//
//  Created by Tomás Ruiz López on 24/4/16.
//  Copyright © 2016 Tomás Ruiz López. All rights reserved.
//

import Foundation

class StatementLine {
    let transaction : Transaction
    let balance : Double
    
    init(withTransaction transaction : Transaction, withBalance balance : Double){
        self.transaction = transaction
        self.balance = balance
    }
    
    func printTo(printer : Printer){
        self.transaction.printTo(printer, withBalance: self.balance)
    }
}