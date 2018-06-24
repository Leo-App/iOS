//
//  Created by Cihat Gündüz on 26.05.17.
//  Copyright © 2017 St. Leonhard Gymnasium. All rights reserved.
//

import UIKit

class Branding {
    // MARK: - Stored Type Properties
    static let shared = Branding()

    // MARK: - Instance Methods
    func setupGlobalAppearance() {
        UIView.appearance().tintColor = Asset.Theme.accent.color
    }
}
