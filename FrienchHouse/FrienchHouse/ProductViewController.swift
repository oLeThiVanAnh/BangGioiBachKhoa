//
//  ProductViewController.swift
//  FrienchHouse
//
//  Created by Le Thi Van Anh on 6/30/17.
//  Copyright © 2017 Le Thi Van Anh. All rights reserved.
//

import UIKit

class ProductViewController: BaseViewController {

    @IBOutlet weak fileprivate var searchViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak fileprivate var searchView: SearchCommonView!
    private var badgeBarButtonItem = BadgeBarButtonItem()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        addRightBarButtonItem()
        addCommonSearchView()
    }

    private func addRightBarButtonItem() {
        self.navigationItem.rightBarButtonItem = badgeBarButtonItem
    }

    private func addCommonSearchView() {
        searchViewTopConstraint.constant = self.navigationController!.navigationBar.frame.origin.y +
            self.navigationController!.navigationBar.frame.height
        if let searchCommonView = SearchCommonView.create() {
            searchCommonView.frame = CGRect(x: 0, y: 0, width: searchView.frame.width, height: searchView.frame.height)
            searchView.addSubview(searchCommonView)
        }
    }
}
