//
//  MainViewController.swift
//  FrienchHouse
//
//  Created by Le Thi Van Anh on 6/30/17.
//  Copyright © 2017 Le Thi Van Anh. All rights reserved.
//

import UIKit

class MainViewController: BaseTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red

        // Do any additional setup after loading the view.
        // Do any additional setup after loading the view.
        let productViewController = BaseNavigationController(rootViewController: ProductViewController(nibName: "ProductViewController", bundle: nil))
        let wishListViewController = BaseNavigationController(rootViewController: WishListViewController(nibName: "WishListViewController", bundle: nil))
        let setupViewController = BaseNavigationController(rootViewController: SetupViewController(nibName: "SetupViewController", bundle: nil))

        productViewController.tabBarItem.title = NSLocalizedString("Product", comment: "")
        productViewController.tabBarItem.image = UIImage(named: "icon_dress")

        wishListViewController.tabBarItem.title = NSLocalizedString("WishList", comment: "")
        wishListViewController.tabBarItem.image = UIImage(named: "icon_dress")

        setupViewController.tabBarItem.title = NSLocalizedString("Setting", comment: "")
        setupViewController.tabBarItem.image = UIImage(named: "icon_dress")

        self.view.backgroundColor = UIColor(red: 242, green: 243, blue: 248, alpha: 1.0)
        self.setViewControllers([
            productViewController,
            wishListViewController,
            setupViewController], animated: false)

        self.navigationItem.hidesBackButton = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
