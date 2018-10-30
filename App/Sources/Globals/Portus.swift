//
//  Created by Cihat Gündüz on 30.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import Foundation
import UIKit

enum PortKey: CaseIterable {
    case home
    case foodmark
    case exams
    case pinboard
    case timetable
    case messenger
    case substitution
    case surveys

    func use(from viewController: UIViewController) {
        BottomNavigationFlowController.shared.port(using: self)
    }
}

protocol Porter {
    func port(using portKey: PortKey)
}
