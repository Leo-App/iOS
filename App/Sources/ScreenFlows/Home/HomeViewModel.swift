//
//  Created by Cihat Gündüz on 27.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

struct HomeViewModel {
    struct ShortLinkEntry {
        let icon: UIImage
        let title: String
    }

    let backgroundImage: UIImage
    let shortLinkEntries: [ShortLinkEntry]
}
