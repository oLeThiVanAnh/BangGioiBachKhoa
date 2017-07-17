//
//  UIViewControllerExtension.swift
//  FrienchHouse
//
//  Created by Le Thi Van Anh on 7/17/17.
//  Copyright © 2017 Le Thi Van Anh. All rights reserved.
//

import Foundation
import UIKit

extension UITableViewCell {
    class var identifier: String {
        return String(describing: self)
    }
}
