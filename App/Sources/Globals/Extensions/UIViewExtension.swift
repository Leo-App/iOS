//
//  Created by Cihat Gündüz on 15.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

extension UIView {
    /// Adds constraints to the superview so that this view has same size and position.
    /// Note: This fails the build if the `superview` is `nil` – add it as a subview before calling this.
    func bindEdgesToSuperview(insetX: CGFloat, insetY: CGFloat) {
        guard let superview = superview else {
            preconditionFailure("`superview` was nil – call `addSubview(view: UIView)` before calling `bindEdgesToSuperview()` to fix this.")
        }

        translatesAutoresizingMaskIntoConstraints = false
        ["H:|-\(insetX)-[subview]-\(insetX)-|", "V:|-\(insetY)-[subview]-\(insetY)-|"].forEach { visualFormat in
            superview.addConstraints(
                NSLayoutConstraint.constraints(
                    withVisualFormat: visualFormat,
                    options: .directionLeadingToTrailing,
                    metrics: nil,
                    views: ["subview": self]
                )
            )
        }
    }
}
