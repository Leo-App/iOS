//
//  Created by Cihat Gündüz on 29.09.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import HandyUIKit
import UIKit

protocol NibLoadable: class {
    static var nibName: String { get }
}

extension NibLoadable {
    /// The name of the nib file. Defaults to the same name as the class.
    static var nibName: String {
        return String(describing: self)
    }

    /// Loads the contents of this view from the corresponding Nib file.
    ///
    /// NOTE: This view must be the 'File's Owner', not the 'View' within the Nib file.
    func loadFromNib() {
        guard let viewSelf = self as? UIView else {
            fatalError("Only subclasses of type `UIView` can conform to `NibLoadable` - `\(String(describing: self))` isn't a `UIView` subclass.")
        }

        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).nibName
        let nib = UINib(nibName: nibName, bundle: bundle)
        guard let views = nib.instantiate(withOwner: self, options: nil) as? [UIView] else {
            fatalError("Could not load views from file `\(nibName).xib`.")
        }

        guard !views.isEmpty else {
            fatalError("No views found in file `\(nibName).xib` – please add a view.")
        }

        guard views.count <= 1 else {
            fatalError("Multiple root views found in file `\(nibName).xib` – there should be only one.")
        }

        let viewFromNib = views[0]
        viewSelf.addSubview(viewFromNib)
        viewFromNib.bindEdgesToSuperview()
    }
}
