//
//  Created by Cihat Gündüz on 29.09.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import Imperio
import UIKit

class BottomNavigationFlowController: InitialFlowController {
    private var bottomNavigationController: BottomNavigationController?

    override func start(from window: UIWindow) {
        bottomNavigationController = StoryboardScene.BottomNavigationController.initialScene.instantiate()
        window.rootViewController = bottomNavigationController
    }
}
