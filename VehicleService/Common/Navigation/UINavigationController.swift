//
//  UINavigationController.swift
//  VehicleService
//
//  Created by Iskandar Herputra Wahidiyat on 21/08/20.
//  Copyright © 2020 Iskandar Herputra Wahidiyat. All rights reserved.
//

import UIKit

extension UINavigationController {
    func navigateToLoginPage() {
        let loginPageVC: LoginViewController = LoginViewController()
        pushViewController(loginPageVC, animated: true)
    }
    
    func navigateToRegisterPage() {
        let registerPageVC: RegisterViewController = RegisterViewController()
        pushViewController(registerPageVC, animated: true)
    }
}
