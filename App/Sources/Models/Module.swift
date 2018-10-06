//
//  Created by Cihat Gündüz on 06.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

enum Module: String, CaseIterable {
    case exams
    case foodmark
    case home
    case messenger
    case pinboard
    case substitution
    case surveys
    case timetable

    var menuIconImage: UIImage {
        return UIImage(named: rawValue)!
    }

    var name: String {
        let localL10n = L10n.Module.self

        switch self {
        case .exams:
            return localL10n.Exams.name

        case .foodmark:
            return localL10n.Foodmark.name

        case .home:
            return localL10n.Home.name

        case .messenger:
            return localL10n.Messenger.name

        case .pinboard:
            return localL10n.Pinboard.name

        case .substitution:
            return localL10n.Substitution.name

        case .surveys:
            return localL10n.Surveys.name

        case .timetable:
            return localL10n.Timetable.name
        }
    }
}
