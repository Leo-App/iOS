//
//  Created by Cihat Gündüz on 27.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import Imperio
import UIKit

class HomeFlowController: FlowController {
    private var homeViewCtrl: HomeViewController! // swiftlint:disable:this implicitly_unwrapped_optional

    override func start(from presentingViewController: UIViewController) {
        let bottomNavigationViewCtrl = presentingViewController as! BottomNavigationViewController
        homeViewCtrl = StoryboardScene.Home.initialScene.instantiate()
        homeViewCtrl.viewModel = HomeViewModel(
            backgroundImage: Image.BackgroundImages.classRoom,
            shortLinkEntries: ModuleManager.shared.activeModules.map { module in
                return HomeViewModel.ShortLinkEntry(icon: module.homeIconImage, title: module.name)
            }
        )
        bottomNavigationViewCtrl.presentedView = homeViewCtrl.view
    }
}
