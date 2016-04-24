//
//  MockPrinter.swift
//  Bank-Kata-Swift
//
//  Created by Tomás Ruiz López on 24/4/16.
//  Copyright © 2016 Tomás Ruiz López. All rights reserved.
//

import Nimble

class MockPrinter : Printer {
    var lines : [String] = []
    
    func println(line : String){
        lines.append(line)
    }
    
    func verifyPrintedLinesInOrder(lines : String...){
        expect(self.lines) == lines
    }
}