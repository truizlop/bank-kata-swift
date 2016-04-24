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
    private var lines : [StatementLine] = []
    
    func addLineWithTransaction(transaction : Transaction, withBalance balance : Double){
        
        lines.append(StatementLine(withTransaction: transaction, withBalance: balance))
    }
    
    func printTo(printer: Printer) {
        printer.println(STATEMENT_HEADER)
        
        lines.reverse().forEach{
            $0.printTo(printer)
        }
    }
}