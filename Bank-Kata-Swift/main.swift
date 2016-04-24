//
//  main.swift
//  Bank-Kata-Swift
//
//  Created by Tomás Ruiz López on 24/4/16.
//  Copyright © 2016 Tomás Ruiz López. All rights reserved.
//

import Foundation

let account = Account(withStatement: DefaultStatement())
let printer = ConsolePrinter()

account.deposit(1000, onDate: "21/04/2016")
account.withdraw(300, onDate: "23/04/2016")
account.deposit(500, onDate: "24/04/2016")

account.printStatementTo(printer)

