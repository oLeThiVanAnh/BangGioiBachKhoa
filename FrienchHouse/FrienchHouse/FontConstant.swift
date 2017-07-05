//
//  FontConstant.swift
//  FrienchHouse
//
//  Created by Le Thi Van Anh on 7/6/17.
//  Copyright © 2017 Le Thi Van Anh. All rights reserved.
//

import UIKit
struct FontConstant {
    static func regular(size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size)
    }

    static func bold(size: CGFloat) -> UIFont {
        return UIFont.boldSystemFont(ofSize: size)
    }
}
