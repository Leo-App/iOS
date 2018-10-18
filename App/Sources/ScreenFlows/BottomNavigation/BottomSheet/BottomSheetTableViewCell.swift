//
//  Created by Cihat Gündüz on 06.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

@IBDesignable
class BottomSheetTableViewCell: UITableViewCell, NibLoadable {
    @IBInspectable var title: String? {
        didSet {
            titleLabel.text = title
        }
    }

    @IBInspectable var iconImage: UIImage? {
        didSet {
            update()
        }
    }

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

    func highlight() {
        isHighlighted = true
        update()
    }

    func unhighlight() {
        isHighlighted = false
        update()
    }

    func nibDidLoad() {
        let selectionView = UIView()

        let innerView = UIView()
        innerView.backgroundColor = Color.Theme.secondary
        innerView.layer.cornerRadius = 4

        selectionView.addSubview(innerView)
        innerView.bindEdgesToSuperview(insetX: 8, insetY: 8)

        selectedBackgroundView = selectionView
    }

    private func update() {
        if isHighlighted {
            iconImageView.image = iconImage?.templateImage(color: Color.Text.lightText)
            titleLabel.textColor = Color.Text.lightText
        } else {
            iconImageView.image = iconImage?.templateImage(color: Color.Text.grayText)
            titleLabel.textColor = Color.Text.darkText
        }
    }
}
