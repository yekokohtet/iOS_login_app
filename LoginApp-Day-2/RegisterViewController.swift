//
//  RegisterViewController.swift
//  LoginApp-Day-2
//
//  Created by Ye Ko Ko Htet on 10/26/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var lblName: UITextField!
    @IBOutlet weak var lblEmail: UITextField!
    @IBOutlet weak var lblPhone: UITextField!
    @IBOutlet weak var scGender: UISegmentedControl!
    @IBOutlet weak var lblDob: UITextField!
    
    private var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(onClickDob(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapGesture(tapGesture:)))

        view.addGestureRecognizer(tapGesture)
        
        lblDob.inputView = datePicker

    }

    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func onClickDob(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        
        lblDob.text = dateFormatter.string(from: datePicker.date)
    }
    
    @objc func viewTapGesture(tapGesture: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func register(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
