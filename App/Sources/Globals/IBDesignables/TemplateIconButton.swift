//
//  Created by Cihat Gündüz on 03.11.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import HandyUIKit
import UIKit

@IBDesignable
class TemplateIconButton: UIButton {
    @IBInspectable var iconImage: UIImage? {
        didSet {
            updateIconImage()
        }
    }

    @IBInspectable var iconColor: UIColor? {
        didSet {
            updateIconImage()
        }
    }

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()

        updateIconImage()
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        updateIconImage()
    }

    private func updateIconImage() {
        let normaleIconImage = iconImage?.templateImage(color: iconColor ?? tintColor)
        let highlightedIconImage = iconImage?.templateImage(color: (iconColor ?? tintColor).change(.alpha, to: 0.3))

        setImage(normaleIconImage, for: UIControl.State.normal)
        setImage(highlightedIconImage, for: .highlighted)
    }
}
