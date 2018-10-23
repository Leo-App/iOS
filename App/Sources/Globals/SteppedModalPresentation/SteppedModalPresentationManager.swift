//
//  Created by Cihat Gündüz on 23.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

class SteppedModalPresentationManager: NSObject, UIViewControllerTransitioningDelegate {
    var presentationController: SteppedModalPresentationController?

    func presentationController(
        forPresented presented: UIViewController,
        presenting: UIViewController?,
        source: UIViewController
    ) -> UIPresentationController? {
        presentationController = SteppedModalPresentationController(presentedViewController: presented, presenting: presenting)
        return presentationController!
    }
}
