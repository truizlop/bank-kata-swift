//
//  AccountTest.swift
//  Bank-Kata-Swift
//
//  Created by Tomás Ruiz López on 24/4/16.
//  Copyright © 2016 Tomás Ruiz López. All rights reserved.
//

import Quick
import Nimble

class AccountTest : QuickSpec {
    
    class MockStatement : Statement {
        var lines : [(Transaction, Double)] = []
        
        func addLineWithTransaction(transaction : Transaction, withBalance balance : Double){
            lines.append((transaction, balance))
        }
        
        func verifyLineAddedWithTransaction(transaction : Transaction, withBalance balance : Double){
            let expectedLine = (transaction, balance)
            expect(self.lines).to(containsTuple(expectedLine))
        }
    }
    
    override func spec(){
        describe("Account"){
            var account : Account!
            var statement : MockStatement!
            
            beforeEach{
                statement = MockStatement()
                account = Account(withStatement : statement)
            }
            
            it("should save a transaction for a deposit"){
                account.deposit(500, onDate: "01/02/2003")
                
                let expectedTransaction = Transaction(withAmount: 500, onDate: "01/02/2003")
                
                statement.verifyLineAddedWithTransaction(expectedTransaction, withBalance: 500);
            }
            
            it("should save a transaction for a withdrawal"){
                account.withdraw(300, onDate: "02/01/2003")
                
                let expectedTransaction = Transaction(withAmount: -300, onDate: "02/01/2003")
                
                statement.verifyLineAddedWithTransaction(expectedTransaction, withBalance: -300)
            }
        }
    }
}