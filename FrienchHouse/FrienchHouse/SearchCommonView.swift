//
//  SearchCommonView.swift
//  FrienchHouse
//
//  Created by Le Thi Van Anh on 7/3/17.
//  Copyright © 2017 Le Thi Van Anh. All rights reserved.
//

import UIKit

class SearchCommonView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    static func create() -> SearchCommonView? {
        guard let searchView = Bundle.main.loadNibNamed("SearchCommonView", owner: nil, options: nil)?.first
            as? SearchCommonView else
            {return nil}
        return searchView
    }

}
