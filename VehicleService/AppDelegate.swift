//
//  AppDelegate.swift
//  VehicleService
//
//  Created by Iskandar Herputra Wahidiyat on 21/08/20.
//  Copyright © 2020 Iskandar Herputra Wahidiyat. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        showMainViewController()
        
        return true
    }
    
    //MARK: - Setup
    private func showMainViewController() {
        if self.window == nil {
            self.window = UIWindow()
        }
        let landingPageVC: UIViewController = createNonLoginLandingPage()
        
        self.window?.rootViewController = landingPageVC
        self.window?.makeKeyAndVisible()
    }
    
    private func createNonLoginLandingPage() -> UIViewController {
        let landingPageViewController: HomeNonLoginViewController = HomeNonLoginViewController()
        let navController: UINavigationController = UINavigationController(rootViewController: landingPageViewController)
        return navController
    }
}

