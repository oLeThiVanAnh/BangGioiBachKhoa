//
//  CollectionsTableViewCell.swift
//  FrienchHouse
//
//  Created by Le Thi Van Anh on 7/13/17.
//  Copyright © 2017 Le Thi Van Anh. All rights reserved.
//

import UIKit

class CollectionsTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func prepareForReuse() {
        self.avatarImageView.image = nil
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
