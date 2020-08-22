//
//  AddVehicleViewController.swift
//  VehicleService
//
//  Created by Iskandar Herputra Wahidiyat on 21/08/20.
//  Copyright © 2020 Iskandar Herputra Wahidiyat. All rights reserved.
//

import UIKit

class AddVehicleViewController: UIViewController {
    @IBOutlet weak var typeTitleLabel: UILabel!
    @IBOutlet weak var typeTextField: UITextField!
    @IBOutlet weak var brandTitleLabel: UILabel!
    @IBOutlet weak var brandTextField: UITextField!
    @IBOutlet weak var nameTitleLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var manufacturingYearTitleLabel: UILabel!
    @IBOutlet weak var manufacturingYearTextField: UITextField!
    @IBOutlet weak var colorTitleLabel: UILabel!
    @IBOutlet weak var colorTextField: UITextField!
    @IBOutlet weak var mileageTitleLabel: UILabel!
    @IBOutlet weak var mileageTextField: UITextField!
    
    @IBOutlet weak var addVehicleButton: UIButton!
    
    @IBOutlet var typePickerView: UIPickerView!
    
    let toolbar: UIToolbar = UIToolbar()
    
    let type: [String] = ["", "Car", "Motorcycle"]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    //MARK: - Setup
    private func setupView() {
        title = "Add Vehicle"
        
        toolbar.items = [
            UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonDidTapped))
        ]
        toolbar.sizeToFit()
        
        typeTextField.rightViewMode = .always
        typeTextField.inputView = typePickerView
        typeTextField.inputAccessoryView = toolbar
        
        brandTextField.inputAccessoryView = toolbar
        
        nameTextField.inputAccessoryView = toolbar
        
        manufacturingYearTextField.inputAccessoryView = toolbar
        
        colorTextField.inputAccessoryView = toolbar
        
        mileageTextField.inputAccessoryView = toolbar
    }
    
    //MARK: - Action
    @objc private func doneButtonDidTapped() {
        view.endEditing(true)
    }
    
    @IBAction func addVehicleButtonDidTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}

extension AddVehicleViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0 {
            typeTextField.text = type[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            return type[row]
        }
        return ""
    }
}

extension AddVehicleViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0 {
            return type.count
        }
        return 0
    }
}
