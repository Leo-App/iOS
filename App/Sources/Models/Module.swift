//
//  Created by Cihat Gündüz on 06.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

enum Module: String, CaseIterable {
    case home
    case foodmark
    case exams
    case pinboard
    case timetable
    case messenger
    case substitution
    case surveys

    var menuIconImage: UIImage {
        switch self {
        case .home:
            return Image.BottomSheet.home

        case .foodmark:
            return Image.BottomSheet.foodmark

        case .exams:
            return Image.BottomSheet.exams

        case .pinboard:
            return Image.BottomSheet.pinboard

        case .timetable:
            return Image.BottomSheet.timetable

        case .messenger:
            return Image.BottomSheet.messenger

        case .substitution:
            return Image.BottomSheet.substitution

        case .surveys:
            return Image.BottomSheet.surveys
        }
    }

    var homeIconImage: UIImage {
        switch self {
        case .home:
            return Image.Home.home

        case .foodmark:
            return Image.Home.foodmark

        case .exams:
            return Image.Home.exams

        case .pinboard:
            return Image.Home.pinboard

        case .timetable:
            return Image.Home.timetable

        case .messenger:
            return Image.Home.messenger

        case .substitution:
            return Image.Home.substitution

        case .surveys:
            return Image.Home.surveys
        }
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
