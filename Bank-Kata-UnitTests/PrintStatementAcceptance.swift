//
//  AccountAcceptance.swift
//  Bank-Kata-Swift
//
//  Created by Tomás Ruiz López on 24/4/16.
//  Copyright © 2016 Tomás Ruiz López. All rights reserved.
//

import Quick
import Nimble

class PrintStatementAcceptance : QuickSpec {
    
    class MockPrinter : Printer {
        var lines : [String] = []
        
        func println(line : String){
            lines.append(line)
        }
        
        func verifyLinesInOrder(lines : String...){
            expect(self.lines) == lines
        }
    }
    
    override func spec() {
        describe("Print a statement"){
            let account = Account()
            let printer = MockPrinter()
            
            it("should print the account transactions in reverse chronological order"){
                account.deposit(1000, onDate: "21/04/2016")
                account.withdraw(300, onDate: "23/04/2016")
                account.deposit(500, onDate: "24/04/2016")
                
                account.printStatementTo(printer)
                
                printer.verifyLinesInOrder(
                    "date | deposit | withdrawal | balance",
                    "24/04/2016 | 500.00 | - | 1200.00",
                    "23/04/2016 | - | 300.00 | 700.00",
                    "21/04/2016 | 1000.00 | - | 1000.00"
                )
            }
        }
    }
}