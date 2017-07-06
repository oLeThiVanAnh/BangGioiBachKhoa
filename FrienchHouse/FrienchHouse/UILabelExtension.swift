//
//  UILabelExtension.swift
//  FrienchHouse
//
//  Created by Le Thi Van Anh on 7/6/17.
//  Copyright © 2017 Le Thi Van Anh. All rights reserved.
//

import Foundation

import UIKit

extension UILabel {
    func configure(fontSize: CGFloat, aligment: NSTextAlignment, isBold: Bool = false) {
        if isBold {
            self.font = FontConstant.bold(size: fontSize)
        } else {
            self.font = FontConstant.regular(size: fontSize)
        }
        self.textAlignment = aligment
    }
}
