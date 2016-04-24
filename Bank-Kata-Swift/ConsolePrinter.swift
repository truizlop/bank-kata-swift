//
//  ConsolePrinter.swift
//  Bank-Kata-Swift
//
//  Created by Tomás Ruiz López on 24/4/16.
//  Copyright © 2016 Tomás Ruiz López. All rights reserved.
//

import Foundation

class ConsolePrinter : Printer {
    func println(line: String) {
        print(line)
    }
}