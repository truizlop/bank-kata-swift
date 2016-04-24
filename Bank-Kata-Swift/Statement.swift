//
//  Statement.swift
//  Bank-Kata-Swift
//
//  Created by Tomás Ruiz López on 24/4/16.
//  Copyright © 2016 Tomás Ruiz López. All rights reserved.
//

import Foundation

protocol Statement {
    func addLineWithTransaction(transaction : Transaction, withBalance balance : Double)
    
    func printTo(printer : Printer)
}