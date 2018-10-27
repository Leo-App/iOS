//
//  Created by Cihat Gündüz on 29.09.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import Imperio
import UIKit

class BottomNavigationFlowController: InitialFlowController {
    private var bottomNavigationViewController: BottomNavigationViewController?
    private var bottomSheetViewController: BottomSheetViewController?
    private var steppedModalPresentationManager: SteppedModalPresentationManager?

    private var subFlowCtrl: FlowController?

    override func start(from window: UIWindow) {
        bottomNavigationViewController = StoryboardScene.BottomNavigation.initialScene.instantiate()
        window.rootViewController = bottomNavigationViewController

        bottomNavigationViewController?.flowDelegate = self
    }
}

extension BottomNavigationFlowController: BottomNavigationFlowDelegate {
    func menuButtonPressed() {
        bottomSheetViewController = StoryboardScene.BottomSheet.initialScene.instantiate()
        bottomSheetViewController?.flowDelegate = self
        steppedModalPresentationManager = SteppedModalPresentationManager()
        bottomSheetViewController?.transitioningDelegate = steppedModalPresentationManager
        bottomSheetViewController?.modalPresentationStyle = .custom
        bottomNavigationViewController?.present(bottomSheetViewController!, animated: true, completion: nil)
    }

    func profileButtonPressed() {
        // TODO: not yet implemented
    }
}

extension BottomNavigationFlowController: BottomSheetFlowDelegate {
    func didSelectModule(_ module: Module) {
        switch module {
        case .home:
            bottomSheetViewController?.dismiss(animated: true)
            self.subFlowCtrl = HomeFlowController()
            self.subFlowCtrl?.start(from: self.bottomNavigationViewController!)

        default:
            break
            // TODO: not yet implemented
        }
    }

    func openCloseButtonPressed() {
        steppedModalPresentationManager?.presentationController?.fullScreen.toggle()
    }
}
