//
//  Created by Cihat Gündüz on 06.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import Foundation

struct ModuleManager {
    static let shared = ModuleManager()

    let activeModules: [Module] = Module.allCases
}
