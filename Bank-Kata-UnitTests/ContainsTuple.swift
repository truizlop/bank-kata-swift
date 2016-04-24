//
//  ContainsTuple.swift
//  Bank-Kata-Swift
//
//  Created by Tomás Ruiz López on 24/4/16.
//  Copyright © 2016 Tomás Ruiz López. All rights reserved.
//

import Foundation
import Nimble

func containsTuple<S : SequenceType, T : Equatable, R : Equatable where S.Generator.Element == (T, R)>(item : (T, R)) -> NonNilMatcherFunc<S> {
    
    return NonNilMatcherFunc { actualExpression, failureMessage in
        failureMessage.postfixMessage = "contain <\(item)>"
        if let actual = try actualExpression.evaluate() {
            for tuple in actual {
                if tuple.0 == item.0 && tuple.1 == item.1 {
                    return true
                }
            }
        }
        return false
    }
}