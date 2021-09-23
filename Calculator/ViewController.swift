//
//  ViewController.swift
//  Calculator
//
//  Created by 이성주 on 2021/09/23.
//

import UIKit

enum Operation {    //열거형 추가
    case Add
    case Subtract
    case Multiply
    case Divide
    case unknown
}

class ViewController: UIViewController {

    @IBOutlet weak var numberOutputLabel: UILabel!
    
    var displayNumber = ""
    var firstOperand = ""
    var secondOperand = ""
    var result = ""
    var currentOperation: Operation = .unknown  //연산자 값 저장: 더하기 나누기 등..
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func tapNumberButton(_ sender: UIButton) {
        guard let numberValue = sender.title(for: .normal) else { return }
        if self.displayNumber.count < 9 { //숫자는 9자리 까지만...
            self.displayNumber += numberValue   //displayNumber 문자열에 numberValue 추가
            self.numberOutputLabel.text = self.displayNumber
        }
    }
    @IBAction func tapClearButton(_ sender: UIButton) {
        self.displayNumber = ""
        self.firstOperand = ""
        self.secondOperand = ""
        self.currentOperation = .unknown
        self.numberOutputLabel.text = "0"
    }
    @IBAction func tapDotButton(_ sender: UIButton) {
        // 입력 숫자가 8개 미만이면서 입력 숫자중 "." 이 포함 되지 않을 때에만 실행
        if self.displayNumber.count < 8, !self.displayNumber.contains(".") {
            // 삼항연자로 displayNumber가 비었으면 "0." 추가 아니면 "." 추가
            self.displayNumber += self.displayNumber.isEmpty ? "0." : "."
            self.numberOutputLabel.text = self.displayNumber
        }
    }
    @IBAction func tapDivideButton(_ sender: UIButton) {
    }
    @IBAction func tapMultiplyButton(_ sender: UIButton) {
    }
    @IBAction func tapSubtractButton(_ sender: UIButton) {
    }
    @IBAction func tapAddButton(_ sender: UIButton) {
    }
    @IBAction func tapEqualButton(_ sender: UIButton) {
        // 결과 값에 3자리 마다 쉼표 추가?
    }
    
}

