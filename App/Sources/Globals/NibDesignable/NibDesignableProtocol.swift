//
//  Created by Cihat Gündüz on 29.09.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//
//  Originally from: https://github.com/mbogh/NibDesignable
//

import HandyUIKit
import UIKit

public protocol NibDesignableProtocol: NSObjectProtocol {
    /**
     Identifies the view that will be the superview of the contents loaded from
     the Nib. Referenced in setupNib().

     - returns: Superview for Nib contents.
     */
    var nibContainerView: UIView { get }

    // MARK: - Nib loading
    /**
     Called to load the nib in setupNib().

     - returns: UIView instance loaded from a nib file.
     */
    func loadNib() -> UIView
    /**
     Called in the default implementation of loadNib(). Default is class name.

     - returns: Name of a single view nib file.
     */
    func nibName() -> String
}

extension NibDesignableProtocol {
    // MARK: - Nib loading
    /**
     Called to load the nib in setupNib().

     - returns: UIView instance loaded from a nib file.
     */
    public func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName(), bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil)[0] as! UIView // swiftlint:disable:this force_cast
    }

    // MARK: - Nib loading
    /**
     Called in init(frame:) and init(aDecoder:) to load the nib and add it as a subview.
     */
    internal func setupNib() {
        let view = self.loadNib()
        self.nibContainerView.addSubview(view)
        view.bindEdgesToSuperview()
    }
}

extension UIView {
    @objc public var nibContainerView: UIView {
        return self
    }

    /**
     Called in the default implementation of loadNib(). Default is class name.

     - returns: Name of a single view nib file.
     */
    open func nibName() -> String {
        return type(of: self).description().components(separatedBy: ".").last!
    }
}
