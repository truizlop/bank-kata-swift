//
//  Transaction.swift
//  Bank-Kata-Swift
//
//  Created by Tomás Ruiz López on 24/4/16.
//  Copyright © 2016 Tomás Ruiz López. All rights reserved.
//

import Foundation

class Transaction {
    let amount : Double
    let date : String
    
    init(withAmount amount : Double, onDate date : String){
        self.amount = amount
        self.date = date
    }
    
    func printTo(printer : Printer, withBalance balance : Double){
        if self.amount >= 0 {
            printer.println("\(date) | \(formatAmount(amount)) | - | \(formatAmount(balance))")
        }else{
            printer.println("\(date) | - | \(formatAmount(-amount)) | \(formatAmount(balance))")
        }
    }
    
    private func formatAmount(amount : Double) -> String{
        return String(format:"%.2f", amount)
    }
}

extension Transaction : Equatable{}

func ==(lhs : Transaction, rhs : Transaction) -> Bool {
    return lhs.amount == rhs.amount && lhs.date == rhs.date
}

