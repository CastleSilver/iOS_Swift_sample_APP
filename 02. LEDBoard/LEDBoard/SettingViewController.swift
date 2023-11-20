//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by 허성은 on 2023/11/14.
//

import UIKit

protocol LEDBoardSettingDelegate: AnyObject {
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}

class SettingViewController: UIViewController {

    @IBOutlet weak var OrangeButton: UIButton!
    @IBOutlet weak var BlueButton: UIButton!
    @IBOutlet weak var BlackButton: UIButton!
    @IBOutlet weak var GreenButton: UIButton!
    @IBOutlet weak var PurpleButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    weak var delegate: LEDBoardSettingDelegate?
    var ledText: String?
    var textColor: UIColor = .yellow
    var backgroundColor: UIColor = .black
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    private func configureView() {
        if let ledText = self.ledText {
            self.textField.text = ledText
        }
        self.changeTextColor(color: self.textColor)
        self.changeBackGroundColorButoon(color: self.backgroundColor)
    }

    @IBAction func tapTextColorButton(_ sender: UIButton) {
        if sender == self.yellowButton {
            self.changeTextColor(color: .yellow)
            self.textColor = .yellow
        } else if sender == self.PurpleButton {
            self.changeTextColor(color: .purple)
            self.textColor = .purple
        } else {
            self.changeTextColor(color: .green)
            self.textColor = .green
        }
    }
    
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        if sender == self.BlackButton {
            self.changeBackGroundColorButoon(color: .black)
            self.backgroundColor = .black
        } else if sender == self.BlueButton {
            self.changeBackGroundColorButoon(color: .blue)
            self.backgroundColor = .blue
        } else {
            self.changeBackGroundColorButoon(color: .orange)
            self.backgroundColor = .orange
        }
    }
    
    @IBAction func tapSaveButton(_ sender: UIButton) {
        self.delegate?.changedSetting(
            text: textField.text,
            textColor: textColor,
            backgroundColor: backgroundColor
        )
        self.navigationController?.popViewController(animated: true)
    }
    
    private func changeTextColor(color: UIColor) {
        self.yellowButton.alpha = color == UIColor.yellow ? 1:0.2
        self.PurpleButton.alpha = color == UIColor.purple ? 1:0.2
        self.GreenButton.alpha = color == UIColor.green ? 1:0.2
    }
    
    private func changeBackGroundColorButoon(color: UIColor) {
        self.BlackButton.alpha = color == UIColor.black ? 1:0.2
        self.BlueButton.alpha = color == UIColor.blue ? 1:0.2
        self.OrangeButton.alpha = color == UIColor.orange ? 1:0.2
    }
}
