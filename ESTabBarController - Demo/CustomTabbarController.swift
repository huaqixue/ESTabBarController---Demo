//
//  CustomTabbarController.swift
//  dataSpringMobile
//
//  Created by huaqi.xue on 2018/5/17.
//  Copyright © 2018年 Marketing Applications.inc. All rights reserved.
//

import UIKit
import ESTabBarController_swift

class CustomTabbarController: ESTabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let tabBar = self.tabBar as? ESTabBar {
            tabBar.itemCustomPositioning = .fillIncludeSeparator
        }
        
        let v1 = UIViewController()
        let v1Nav = UINavigationController(rootViewController: v1)
        v1.view.backgroundColor = .green
        
        let v2 = UIViewController()
        let v2Nav = UINavigationController(rootViewController: v2)
        v2.view.backgroundColor = .red
        
        let v3 = UIViewController()
        let v3Nav = UINavigationController(rootViewController: v3)
        v3.view.backgroundColor = .gray
        
        let v4 = UIViewController()
        let v4Nav = UINavigationController(rootViewController: v4)
        v4.view.backgroundColor = .lightGray
        
        let v5 = UIViewController()
        let v5Nav = UINavigationController(rootViewController: v5)
        v5.view.backgroundColor = .yellow
        
        v1Nav.tabBarItem = ESTabBarItem.init(TabBarContentView(), title: "Page1", image: UIImage(named: "ico-point-history-inactive"), selectedImage: UIImage(named: "ico-point-history"))
        v2Nav.tabBarItem = ESTabBarItem.init(TabBarContentView(), title: "Page2", image: UIImage(named: "ico-point-history-inactive"), selectedImage: UIImage(named: "ico-point-history"))
        v3Nav.tabBarItem = ESTabBarItem.init(TabBarContentView(), title: "Page3", image: UIImage(named: "ico-point-history-inactive"), selectedImage: UIImage(named: "ico-point-history"))
        v4Nav.tabBarItem = ESTabBarItem.init(TabBarContentView(), title: "Page4", image: UIImage(named: "ico-point-history-inactive"), selectedImage: UIImage(named: "ico-point-history"))
        v5Nav.tabBarItem = ESTabBarItem.init(TabBarContentView(), title: "Page5", image: UIImage(named: "ico-point-history-inactive"), selectedImage: UIImage(named: "ico-point-history"))
        
        self.viewControllers = [v1Nav, v2Nav, v3Nav, v4Nav, v5Nav]
        
        selectedIndex = 2
    }
}
