//
//  StatementTest.swift
//  Bank-Kata-Swift
//
//  Created by Tomás Ruiz López on 24/4/16.
//  Copyright © 2016 Tomás Ruiz López. All rights reserved.
//

import Quick
import Nimble

class DefaultStatementTest : QuickSpec {
    
    override func spec(){
        describe("DefaultStatement"){
            var statement : DefaultStatement!
            var printer : MockPrinter!
            
            beforeEach{
                statement = DefaultStatement()
                printer = MockPrinter()
            }
            
            it("should print statement header when it is empty"){
                statement.printTo(printer)
                
                printer.verifyPrintedLinesInOrder("date | deposit | withdrawal | balance")
            }
            
            it("should print onle line per transaction in statement in reverse chronological order"){
                statement.addLineWithTransaction(Transaction(withAmount: 500, onDate: "01/01/2001"), withBalance: 500)
                statement.addLineWithTransaction(Transaction(withAmount: -300, onDate: "02/01/2001"), withBalance: 200)
                statement.printTo(printer)
                
                printer.verifyPrintedLinesInOrder(
                    "date | deposit | withdrawal | balance",
                    "02/01/2001 | - | 300.00 | 200.00",
                    "01/01/2001 | 500.00 | - | 500.00"
                )
            }
        }
    }
}