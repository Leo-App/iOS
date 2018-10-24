//
//  Created by Cihat Gündüz on 26.05.17.
//  Copyright © 2017 Cihat Gündüz. All rights reserved.
//

import Imperio
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    // MARK: - Stored Instance Properties
    var window: UIWindow?
    var initialFlowController: InitialFlowController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        // load window
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()

        // setup global stuff
        Logger.shared.setup()
        ErrorHandling.shared.setup(window: window!)
        Branding.shared.setupGlobalAppearance()

        // start initial flow
        initialFlowController = BottomNavigationFlowController()
        initialFlowController?.start(from: window!)

        return true
    }
}
