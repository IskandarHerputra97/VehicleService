//
//  VehicleDetailViewController.swift
//  VehicleService
//
//  Created by Iskandar Herputra Wahidiyat on 22/08/20.
//  Copyright © 2020 Iskandar Herputra Wahidiyat. All rights reserved.
//

import UIKit

class VehicleDetailViewController: UIViewController {
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
    
    @IBOutlet weak var saveDataButton: UIButton!
    @IBOutlet weak var maintenanceButton: UIButton!
    @IBOutlet weak var deleteVehicleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    //MARK: - Setup
    private func setupView() {
        title = "Vehicle Detail"
        
        maintenanceButton.layer.borderWidth = 1.0
    }
    
    //MARK: - Action
    @IBAction func saveDataButtonDidTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func maintenanceButtonDidTapped(_ sender: UIButton) {
        navigationController?.navigateToMaintenancePage()
    }
    
    @IBAction func deleteVehicleButtonDidTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
