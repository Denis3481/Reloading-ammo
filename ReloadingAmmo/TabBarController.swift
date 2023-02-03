//
//  TabBarController.swift
//  ReloadingAmmo
//
//  Created by Денис Шишкин on 01.02.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }
    
    private func setupView() {
        self.viewControllers?.enumerated().forEach {
            $1.tabBarController?.tabBar.tintColor = .black
            $1.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
        }
    }
}
