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
    
    class MockPrinter : Printer {
        var lines : [String] = []
        
        func println(line : String){
            lines.append(line)
        }
        
        func verifyPrintedLinesInOrder(lines : String...){
            expect(self.lines) == lines
        }
    }
    
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
        }
    }
}