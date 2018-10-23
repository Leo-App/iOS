//
//  Created by Cihat Gündüz on 29.09.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

protocol BottomSheetHeaderViewDelegate: class {
    func openCloseButtonPressed()
}

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

    @IBInspectable var image: UIImage?

    @IBInspectable var fullScreen: Bool = false {
        didSet {
            updateOpenCloseButton()
        }
    }

    weak var delegate: BottomSheetHeaderViewDelegate?

    @IBOutlet private var imageView: UIImageView!
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var subtitleLabel: UILabel!
    @IBOutlet private var openCloseButton: UIButton!

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadFromNib()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadFromNib()
    }

    @IBAction private func openCloseButtonPressed() {
        delegate?.openCloseButtonPressed()
    }

    private func updateOpenCloseButton() {
        if fullScreen {
            openCloseButton.setImage(Image.BottomNavigation.sheetClose, for: .normal)
        } else {
            openCloseButton.setImage(Image.BottomNavigation.sheetOpen, for: .normal)
        }
    }
}
