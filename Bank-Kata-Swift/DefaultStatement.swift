//
//  DefaultStatement.swift
//  Bank-Kata-Swift
//
//  Created by Tomás Ruiz López on 24/4/16.
//  Copyright © 2016 Tomás Ruiz López. All rights reserved.
//

import Foundation

class DefaultStatement : Statement {
    private let STATEMENT_HEADER = "date | deposit | withdrawal | balance"
    
    func addLineWithTransaction(transaction : Transaction, withBalance balance : Double){
        
    }
    
    func printTo(printer: Printer) {
        printer.println(STATEMENT_HEADER)
    }
}