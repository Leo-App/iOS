//
//  Created by Cihat Gündüz on 29.09.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import Imperio
import UIKit

class BottomNavigationFlowController: InitialFlowController {
    static let shared = BottomNavigationFlowController()

    private var bottomNavigationViewController: BottomNavigationViewController?
    private var bottomSheetViewController: BottomSheetViewController?
    private var steppedModalPresentationManager: SteppedModalPresentationManager?

    private var subFlowCtrl: FlowController?

    override func start(from window: UIWindow) {
        bottomNavigationViewController = StoryboardScene.BottomNavigation.initialScene.instantiate()
        window.rootViewController = bottomNavigationViewController

        bottomNavigationViewController?.flowDelegate = self
        port(using: PortKey.home)
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
        bottomSheetViewController?.dismiss(animated: true)

        switch module {
        case .home:
            subFlowCtrl = HomeFlowController()

        case .pinboard:
            subFlowCtrl = PinboardFlowController()

        case .exams:
            subFlowCtrl = ExamsFlowController()

        case .foodmark:
            subFlowCtrl = FoodmarkFlowController()

        case .messenger:
            subFlowCtrl = MessengerFlowController()

        case .substitution:
            subFlowCtrl = SubstitutionFlowController()

        case .surveys:
            subFlowCtrl = SurveysFlowController()

        case .timetable:
            subFlowCtrl = TimetableFlowController()
        }

        subFlowCtrl?.start(from: bottomNavigationViewController!)
    }

    func openCloseButtonPressed() {
        steppedModalPresentationManager?.presentationController?.fullScreen.toggle()
    }
}

extension BottomNavigationFlowController: Porter {
    func port(using portKey: PortKey) {
        switch portKey {
        case .home:
            subFlowCtrl = HomeFlowController()

        case .pinboard:
            subFlowCtrl = PinboardFlowController()

        case .exams:
            subFlowCtrl = ExamsFlowController()

        case .foodmark:
            subFlowCtrl = FoodmarkFlowController()

        case .messenger:
            subFlowCtrl = MessengerFlowController()

        case .substitution:
            subFlowCtrl = SubstitutionFlowController()

        case .surveys:
            subFlowCtrl = SurveysFlowController()

        case .timetable:
            subFlowCtrl = TimetableFlowController()
        }

        subFlowCtrl?.start(from: bottomNavigationViewController!)
    }
}
