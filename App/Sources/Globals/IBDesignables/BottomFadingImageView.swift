//
//  Created by Cihat Gündüz on 27.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

@IBDesignable
class BottomFadingImageView: UIImageView {
    @IBInspectable var fadingAreaHeight: CGFloat = 0 {
        didSet {
            updateFadingArea()
        }
    }

    let gradientLayer = CAGradientLayer()

    override func awakeFromNib() {
        super.awakeFromNib()
        setupGradientLayer()
    }

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupGradientLayer()
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        updateFadingArea()
    }

    func setupGradientLayer() {
        gradientLayer.colors = [UIColor.black.cgColor, UIColor.black.cgColor, UIColor.clear.cgColor]
        layer.mask = gradientLayer
    }

    func updateFadingArea() {
        gradientLayer.frame = bounds
        let fadingStartLocation = NSNumber(value: Double(1 - (fadingAreaHeight / bounds.height)))
        gradientLayer.locations = [0, fadingStartLocation, 1]
    }
}
