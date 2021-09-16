//
//  Calculate.swift
//  Kadai7Sauna
//
//  Created by KS on 2021/09/14.
//

import Foundation

final class CalcModel {
    enum Sign {
        case plus
        case minus

        func calculate(num1: Int, num2: Int) -> Int {
            switch self {
            case .plus:
                return num1 + num2
            case .minus:
                return num1 - num2
            }
        }
    }

    func calculate(num1: Int, num2: Int, sign: Sign) -> String {
        let result = sign.calculate(num1: num1, num2: num2)
        return String(result)
    }
}
