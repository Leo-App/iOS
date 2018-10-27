//
//  Created by Cihat Gündüz on 27.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

@IBDesignable
class HomeShortLinkCell: UICollectionViewCell {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            clipsToBounds = true
        }
    }

    var shortLinkEntry: HomeViewModel.ShortLinkEntry? {
        didSet {
            iconImageView.image = shortLinkEntry?.icon.templateImage(color: Color.Theme.secondary)
            titleLabel.text = shortLinkEntry?.title
        }
    }

    @IBOutlet private var iconImageView: UIImageView!
    @IBOutlet private var titleLabel: UILabel!
}
