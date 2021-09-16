//
//  CalcMinusViewController.swift
//  Kadai7Sauna
//
//  Created by KS on 2021/09/14.
//

import UIKit

final class CalcMinusViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    private let calcModel = CalcModel()

    @IBAction private func showResultButtonDidTapped(_ sender: Any) {
        resultLabel.text =  calcModel.calculate(num1: Int(textField1.text ?? "") ?? 0, num2: Int(textField2.text ?? "") ?? 0, sign: .minus)
        view.endEditing(true)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
