//
//  Created by Cihat Gündüz on 26.05.17.
//  Copyright © 2017 Cihat Gündüz. All rights reserved.
//

import UIKit

final class Branding {
    // MARK: - Stored Type Properties
    static let shared = Branding()

    // MARK: - Instance Methods
    func setupGlobalAppearance() {
        UIView.appearance().tintColor = Color.Theme.accent
        UITableView.appearance().tintColor = Color.Theme.accent
        UICollectionView.appearance().tintColor = Color.Theme.accent
    }
}
