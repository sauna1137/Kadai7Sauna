//
//  CalcMinusViewController.swift
//  Kadai7Sauna
//
//  Created by KS on 2021/09/14.
//

import UIKit

final class CalcMinusViewController: UIViewController {
    @IBOutlet private var textFIelds: [UITextField]!
    @IBOutlet private weak var resultLabel: UILabel!

    private let calcModel = CalcModel()

    @IBAction private func showResultButtonDidTapped(_ sender: Any) {
        resultLabel.text =  calcModel.calculate(num1: Int(textFIelds[0].text ?? "") ?? 0, num2: Int(textFIelds[1].text ?? "") ?? 0, sign: "minus")
        view.endEditing(true)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
