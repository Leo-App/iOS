//
//  Created by Cihat Gündüz on 29.09.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

@IBDesignable
class BottomSheetHeaderView: UIView, NibLoadable {
    @IBInspectable var title: String? {
        didSet {
            titleLabel.text = title
        }
    }

    @IBInspectable var subtitle: String? {
        didSet {
            subtitleLabel.text = subtitle
        }
    }

    @IBInspectable var image: UIImage? {
        didSet {
            updateImage()
        }
    }

    @IBInspectable var highlighted: Bool = false {
        didSet {
            updateImage()
        }
    }

    @IBOutlet private var imageView: UIImageView!
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var subtitleLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadFromNib()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadFromNib()
    }

    private func updateImage() {
        if highlighted {
            imageView.image = image?.templateImage(color: Color.Text.lightText)
        } else {
            imageView.image = image?.templateImage(color: Color.Text.grayText)
        }
    }
}
