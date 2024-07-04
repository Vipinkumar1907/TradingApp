//
//  TabBarController.swift
//  TradingApp
//
//  Created by Vipin Kumar on 26/05/24.
//

import UIKit

class TabBarController: UITabBarController {
    
    var portfolioVC: UIViewController {
        let porfoloioVC = HomeViewController.getInstance(HomeViewModel())
        porfoloioVC.tabBarItem = UITabBarItem(title: "Portfolio", image: UIImage(systemName: "briefcase.fill"), selectedImage: UIImage(systemName: "briefcase.fill"))
        return porfoloioVC
    }
    
    var watchlistVC: UIViewController {
        let watchlistVC = UIViewController()
        watchlistVC.tabBarItem = UITabBarItem(title: "Watchlist", image: UIImage(systemName: "star.fill"), selectedImage: UIImage(systemName: "star.fill"))
        return watchlistVC
    }
    
    var ordersVC: UIViewController {
        let ordersVC = UIViewController()
        ordersVC.tabBarItem = UITabBarItem(title: "Orders", image: UIImage(systemName: "cart.fill"), selectedImage: UIImage(systemName: "cart.fill"))
        return ordersVC
    }
    
    var fundsVC: UIViewController {
        let fundsVC = UIViewController()
        fundsVC.tabBarItem = UITabBarItem(title: "Funds", image: UIImage(systemName: "banknote.fill"), selectedImage: UIImage(systemName: "banknote.fill"))
        return fundsVC
    }
    
    var investVC: UIViewController {
        let investVC = UIViewController()
        investVC.tabBarItem = UITabBarItem(title: "Invest", image: UIImage(systemName: "arrow.up.arrow.down"), selectedImage: UIImage(systemName: "arrow.up.arrow.down"))
        return investVC
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setVCs()
        setupTabBar()
    }
    
    func setupTabBar() {
        self.tabBar.isTranslucent = true
        self.tabBar.itemPositioning = .automatic
        selectedIndex = 2
    }
    
    func setVCs() {
        let appearance = UITabBarAppearance()
        appearance.stackedLayoutAppearance.normal.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 15)
        appearance.stackedLayoutAppearance.selected.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 15)
        tabBar.standardAppearance = appearance

        let viewControllers: [UIViewController] = [watchlistVC, ordersVC, portfolioVC, fundsVC, investVC]
        self.viewControllers = viewControllers.compactMap { UINavigationController(rootViewController: $0) }
    }
    
    
}
