//
//  AppDelegate.swift
//  AddToCard
//
//  Created by Me on 09.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        
        
        window?.makeKeyAndVisible()
        window?.rootViewController = setupTabBarController()
        return true
    }
    private func setupTabBarController() -> UITabBarController{
        let tabBarController = UITabBarController()
        let NavigationCatalogViewController = UINavigationController(rootViewController: CatalogViewController())
        let NavigationBasketViewController = UINavigationController(rootViewController: BasketViewController())
        let myPurchasesViewController = MyPurchasesViewController()
        tabBarController.viewControllers = [myPurchasesViewController,  NavigationCatalogViewController, NavigationBasketViewController]
        let item1 = UITabBarItem(title: "My", image: UIImage(named: "MyPurchases"), tag: 0)
        let item2 = UITabBarItem(title: "Catalog", image:  UIImage(named: "Catalog"), tag: 1)
        let item3 = UITabBarItem(title: "Basket", image:  UIImage(named: "Basket"), tag: 2)
        
        myPurchasesViewController.tabBarItem = item1
        NavigationCatalogViewController.tabBarItem = item2
        NavigationBasketViewController.tabBarItem = item3
        
        return tabBarController
        
    }

    




}

