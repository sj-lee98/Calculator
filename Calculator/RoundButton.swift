//
//  RoundButton.swift
//  Calculator
//
//  Created by 이성주 on 2021/09/23.
//

import UIKit

@IBDesignable   //storyboard 에서 버튼 선택해서 값 변경 가능
class RoundButton: UIButton {
    @IBInspectable var isRound: Bool = false {
        didSet {
            if isRound{// isRound 가 true 이면
                self.layer.cornerRadius = self.frame.height / 2     //정사각형 버튼은 원으로,,, 아닌것들은 모서리 둥글게...
            }
        }
    }

}
