//
//  MaintenanceViewController.swift
//  VehicleService
//
//  Created by Iskandar Herputra Wahidiyat on 22/08/20.
//  Copyright © 2020 Iskandar Herputra Wahidiyat. All rights reserved.
//

import UIKit

class MaintenanceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    //MARK: - Setup
    private func setupView() {
        title = "Maintenance"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonDidTapped(_:)))
    }
    
    //MARK: - Action
    @objc private func addButtonDidTapped(_ sender: UIBarButtonItem) {
        navigationController?.navigateToAddMaintenancePage()
    }
}
