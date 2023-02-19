//
//  addAlertViewController.swift
//  Drink
//
//  Created by tmoney on 2023/02/19.
//

import UIKit

class AddAlertViewController: UIViewController {
    var pickedDate: ((_ date: Date) -> Void)?
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func dismissButtonTapped(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true)
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        // 데이트 피커 값을 부모 뷰에 전달
        pickedDate?(datePicker.date)
        self.dismiss(animated: true)
    }
}
