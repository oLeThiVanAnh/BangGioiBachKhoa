//
//  CollectionsViewController.swift
//  FrienchHouse
//
//  Created by Le Thi Van Anh on 7/12/17.
//  Copyright © 2017 Le Thi Van Anh. All rights reserved.
//

import UIKit
import SVProgressHUD
import RxSwift
import RxCocoa

class CollectionsViewController: ProductViewController {

    let collectionTableView = UITableView()
    let disposeBag = DisposeBag()
    static let listProduct: [Collection] = {
        let cl1 = Collection("icon_title")
        let cl2 = Collection("icon_title")
        return [cl1, cl2]
    }()
    let products = Observable.just(listProduct)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupTableView()
        getListCollections()
    }

    func setupView() {
        if let heightOfsearchCommonView = self.searchCommonView?.frame.height, let positionYsearchCommonView = self.searchCommonView?.frame.origin.y {
            let positionYOfCollectionTableView = heightOfsearchCommonView + positionYsearchCommonView + 30
            collectionTableView.frame = CGRect(x: 10, y: positionYOfCollectionTableView, width: UIScreen.main.bounds.width - 20, height: self.view.bounds.height - 10 - positionYOfCollectionTableView )
            collectionTableView.backgroundColor = .red
            self.view.addSubview(collectionTableView)
        }
    }

    func setupTableView() {
        collectionTableView.rx.setDelegate(self).addDisposableTo(disposeBag)
        self.collectionTableView.register(UINib(nibName: "CollectionsTableViewCell", bundle: nil), forCellReuseIdentifier: CollectionsTableViewCell.identifier)
        // equall cell for row at index path
        products.bind(to: collectionTableView.rx.items(cellIdentifier: CollectionsTableViewCell.identifier, cellType: CollectionsTableViewCell.self)) { row, item, cell in
            if let img = item.imageUrl {
                cell.avatarImageView.image = UIImage(named: img)
            }
        }.addDisposableTo(disposeBag)
    }

    func getListCollections() {
        HttpClient.shared.callrequest(method: .get, api: .collections, success: { [weak self](statusCode, resultValue) in
            print("success")
        }) { [weak self] error in
            print("error")
        }
    }
}

extension CollectionsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return collectionTableView.frame.height
    }
}

