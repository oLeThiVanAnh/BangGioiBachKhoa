//
//  BadgeBarButtonItem
//  FrienchHouse
//
//  Created by Le Thi Van Anh on 7/5/17.
//  Copyright © 2017 Le Thi Van Anh. All rights reserved.
//

import UIKit

class BadgeBarButtonItem: UIBarButtonItem {
    private var bagButton = UIButton(type: .custom)
    private var countLabel =  UILabel()

    var didPressBarButton: (() -> Void)?

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init() {
        super.init()
        commonInit()
    }

    fileprivate func commonInit() {
        bagButton.setImage(UIImage(named: "icon_shoppingbag"), for: .normal)
        bagButton.addTarget(self, action:#selector(BadgeBarButtonItem.handleShoppingBagClicked), for: .touchUpInside)
        bagButton.frame = CGRect(x: 0, y: 0, width: 35, height: 35)
        countLabel.frame = CGRect(x: 8, y: 10, width: 20, height: 20)
        countLabel.text = "0"
        countLabel.configure(fontSize: 12, aligment: .center)
        bagButton.addSubview(countLabel)
        self.customView = bagButton
    }

    @objc private func handleShoppingBagClicked() {
        self.didPressBarButton?()
    }

    func updateShoppingBag(numberOfItems value: Int) {
        countLabel.text = String(value)
    }    
}
