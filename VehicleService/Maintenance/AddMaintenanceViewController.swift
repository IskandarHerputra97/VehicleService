//
//  AddMaintenanceViewController.swift
//  VehicleService
//
//  Created by Iskandar Herputra Wahidiyat on 22/08/20.
//  Copyright © 2020 Iskandar Herputra Wahidiyat. All rights reserved.
//

import UIKit

class AddMaintenanceViewController: UIViewController {
    @IBOutlet weak var maintenanceDescriptionTitleLabel: UILabel!
    @IBOutlet weak var maintenanceDescriptionTextView: UITextView!
    @IBOutlet weak var totalMaintenanceCostTitleLabel: UILabel!
    @IBOutlet weak var totalMaintenanceCostTextField: UITextField!
    
    @IBOutlet weak var addMaintenanceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    //MARK: - Setup
    private func setupView() {
        title = "Add Maintenance"
        
        maintenanceDescriptionTextView.layer.borderWidth = 1.0
    }
    
    //MARK: - Action
    @IBAction func addMaintenanceButtonDidTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
