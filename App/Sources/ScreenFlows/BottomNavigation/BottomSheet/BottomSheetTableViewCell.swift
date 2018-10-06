//
//  Created by Cihat Gündüz on 06.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

@IBDesignable
class BottomSheetTableViewCell: UITableViewCell, NibLoadable {
    @IBOutlet private var iconImageView: UIImageView!
    @IBOutlet private var titleLabel: UILabel!

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        loadFromNib()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadFromNib()
    }

    @IBInspectable var title: String? {
        didSet {
            titleLabel.text = title
        }
    }

    @IBInspectable var iconImage: UIImage? {
        didSet {
            iconImageView.image = iconImage?.withRenderingMode(.alwaysTemplate)
        }
    }
}
