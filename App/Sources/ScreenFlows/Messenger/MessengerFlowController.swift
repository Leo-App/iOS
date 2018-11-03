//
//  Created by Cihat Gündüz on 30.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import Imperio
import UIKit

class MessengerFlowController: FlowController {
    var viewCtrl: UIViewController?

    override func start(from presentingViewController: UIViewController) {
        viewCtrl = UIViewController()
        viewCtrl?.view.backgroundColor = UIColor.blue

        let bottomNavigationViewCtrl = presentingViewController as! BottomNavigationViewController
        bottomNavigationViewCtrl.presentedView = viewCtrl?.view
    }
}
