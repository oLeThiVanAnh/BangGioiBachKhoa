//
//  BaseViewController.swift
//  FrienchHouse
//
//  Created by Le Thi Van Anh on 6/30/17.
//  Copyright © 2017 Le Thi Van Anh. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let img = UIImage(named: "icon_title")
        let imgView = UIImageView(image: img)
        imgView.contentMode = .scaleAspectFit
        imgView.frame = CGRect(x: 0, y: 0, width: 20, height: 15)
        self.navigationItem.titleView = imgView
    }

}
