//
//  TabBarController.swift
//  UIScreens
//
//  Created by Nazerke Sembay on 06.09.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
        setTabBarAppearance()
    }
    
    private func generateTabBar() {
        viewControllers = [
        generateVC(
            viewController: MainViewController(),
            image: UIImage(named: "main")
        ),
        
        generateVC(
            viewController: ReportsViewController(),
            image: UIImage(named: "reports")
        ),
        
        generateVC(
            viewController: ProfileViewController(),
            image: UIImage(named: "profile")
        )
        ]
    }
    private func generateVC(viewController: UIViewController, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setTabBarAppearance() {
        tabBar.tintColor = .red
        tabBar.alpha = 1
        
        let lineView = UIView()
        lineView.backgroundColor = UIColor(red: 185/255, green: 193/255, blue: 217/255, alpha: 0.5)
        lineView.frame = CGRect(x: 0, y: 0, width: tabBar.frame.size.width, height: 1)
        
        tabBar.addSubview(lineView)
    }
}






