//
//  Created by Cihat Gündüz on 26.05.17.
//  Copyright © 2017 St. Leonhard Gymnasium. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    // MARK: - Stored Instance Properties
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]? = nil) -> Bool {
        // setup global stuff
        Logger.shared.setup()
        Branding.shared.setupGlobalAppearance()

        return true
    }
}
