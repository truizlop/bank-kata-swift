//
//  TransactionTest.swift
//  Bank-Kata-Swift
//
//  Created by Tomás Ruiz López on 24/4/16.
//  Copyright © 2016 Tomás Ruiz López. All rights reserved.
//

import Quick
import Nimble

class TransactionTest : QuickSpec {
    override func spec(){
        describe("Transaction"){
            it("two transactions with the same amount and date are equal"){
                let aTransaction = Transaction(withAmount: 100, onDate: "01/02/2003")
                let anotherTransaction = Transaction(withAmount: 100, onDate: "01/02/2003")
                
                expect(aTransaction) == anotherTransaction
            }
            
            it("two transactions with different amounts are not equal"){
                
                let aTransaction = Transaction(withAmount: 200, onDate: "01/02/2003")
                let anotherTransaction = Transaction(withAmount: 100, onDate: "01/02/2003")
                
                expect(aTransaction) != anotherTransaction
            }
            
            it("two transactions with different dats are not equal"){
                
                let aTransaction = Transaction(withAmount: 100, onDate: "02/02/2003")
                let anotherTransaction = Transaction(withAmount: 100, onDate: "01/02/2003")
                
                expect(aTransaction) != anotherTransaction
            }
        }
    }
}
