//
//  HomePageViewController.swift
//  VehicleService
//
//  Created by Iskandar Herputra Wahidiyat on 21/08/20.
//  Copyright © 2020 Iskandar Herputra Wahidiyat. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {
    @IBOutlet weak var vehicleTableView: UITableView!
    @IBOutlet weak var addVehicleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    //MARK: - Setup
    private func setupView() {
        title = "VehicleService"
        
        vehicleTableView.register(UINib(nibName: "VehicleTableViewCell", bundle: nil), forCellReuseIdentifier: "VehicleTableViewCell")
        vehicleTableView.reloadData()
        vehicleTableView.layoutIfNeeded()
        vehicleTableView.heightAnchor.constraint(equalToConstant: vehicleTableView.contentSize.height).isActive = true
    }
    
    //MARK: - Action
    @IBAction func addVehicleButtonDidTapped(_ sender: UIButton) {
        navigationController?.navigateToAddVehiclePage()
    }
}

extension HomePageViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VehicleTableViewCell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        navigationController?.navigateToVehicleDetailPage()
    }
}
