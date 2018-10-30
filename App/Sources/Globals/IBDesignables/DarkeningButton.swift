//
//  Created by Cihat Gündüz on 30.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import HandyUIKit
import UIKit

@IBDesignable
class DarkeningButton: UIButton {
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupDarkeningBackground()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setupDarkeningBackground()
    }

    func setupDarkeningBackground() {
        let backgroundView = UIView()
        backgroundView.frame = CGRect(width: 1, height: 1)
        backgroundView.backgroundColor = UIColor(white: 0, alpha: 0.5)

        let backgroundImage = backgroundView.toImage()
        setBackgroundImage(backgroundImage, for: .highlighted)
    }
}
