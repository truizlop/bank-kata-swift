//
//  TransactionLine.swift
//  Bank-Kata-Swift
//
//  Created by Tomás Ruiz López on 24/4/16.
//  Copyright © 2016 Tomás Ruiz López. All rights reserved.
//

import Quick
import Nimble

class StatementLineTest : QuickSpec {
    
    override func spec(){
        describe("StatementLine"){
            var printer : MockPrinter!
            
            beforeEach{
                printer = MockPrinter()
            }
            
            it("should print a deposit transaction"){
                let statementLine = StatementLine(withTransaction : Transaction(withAmount: 300, onDate: "01/01/2001"), withBalance: 300);
                
                statementLine.printTo(printer)
                
                printer.verifyPrintedLinesInOrder("01/01/2001 | 300.00 | - | 300.00")
            }
            
        }
    }
}
