//
//  Created by Cihat Gündüz on 25.09.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

protocol BottomNavigationFlowDelegate: class {
    func menuButtonPressed()
    func profileButtonPressed()
}

class BottomNavigationViewController: UIViewController {
    weak var flowDelegate: BottomNavigationFlowDelegate?
    var presentedView: UIView? {
        didSet {
            if let presentedView = presentedView {
                containerView.addSubview(presentedView)
                presentedView.bindEdgesToSuperview()
            } else {
                oldValue?.removeFromSuperview()
            }
        }
    }

    @IBOutlet private var containerView: UIView!

    @IBAction private func menuButtonPressed() {
        flowDelegate?.menuButtonPressed()
    }

    @IBAction private func profileButtonPressed() {
        flowDelegate?.profileButtonPressed()
    }
}
