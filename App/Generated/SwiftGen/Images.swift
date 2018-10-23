// swiftlint:disable all
// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import UIKit

// MARK: - Helpers
private final class BundleToken {}

extension UIImage {
  @available(iOS 1.0, tvOS 1.0, watchOS 1.0, *)
  convenience init(name: String) {
    #if os(iOS) || os(tvOS)
    let bundle = Bundle(for: BundleToken.self)
    self.init(named: name, in: bundle, compatibleWith: nil)!
    #elseif os(watchOS)
    self.init(named: name)!
    #endif
  }
}

// MARK: - Images
enum Image {
  enum BottomNavigation {
    static let menu = UIImage(name: "menu")
    static let profile = UIImage(name: "profile")
    static let profilePlaceholder = UIImage(name: "profilePlaceholder")
    static let sheetClose = UIImage(name: "sheetClose")
    static let sheetOpen = UIImage(name: "sheetOpen")
  }
  enum BottomSheet {
    static let exams = UIImage(name: "exams")
    static let foodmark = UIImage(name: "foodmark")
    static let home = UIImage(name: "home")
    static let messenger = UIImage(name: "messenger")
    static let pinboard = UIImage(name: "pinboard")
    static let substitution = UIImage(name: "substitution")
    static let surveys = UIImage(name: "surveys")
    static let timetable = UIImage(name: "timetable")
  }
  static let launchIcon = UIImage(name: "LaunchIcon")

  static let allImages: [UIImage] = [
    BottomNavigation.menu,
    BottomNavigation.profile,
    BottomNavigation.profilePlaceholder,
    BottomNavigation.sheetClose,
    BottomNavigation.sheetOpen,
    BottomSheet.exams,
    BottomSheet.foodmark,
    BottomSheet.home,
    BottomSheet.messenger,
    BottomSheet.pinboard,
    BottomSheet.substitution,
    BottomSheet.surveys,
    BottomSheet.timetable,
    launchIcon,
  ]
}
