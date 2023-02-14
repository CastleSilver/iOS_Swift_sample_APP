//
//  SeguePushViewController.swift
//  LEDGenerator
//
//  Created by tmoney on 2023/01/26.
//

import UIKit

class SeguePushViewController: UIViewController {

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
//        self.navigationController?.popToRootViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
