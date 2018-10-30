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
  enum BackgroundImages {
    static let classRoom = UIImage(name: "BackgroundImages/classRoom")
  }
  enum BottomNavigation {
    static let menu = UIImage(name: "BottomNavigation/menu")
    static let profile = UIImage(name: "BottomNavigation/profile")
    static let profilePlaceholder = UIImage(name: "BottomNavigation/profilePlaceholder")
    static let sheetClose = UIImage(name: "BottomNavigation/sheetClose")
    static let sheetOpen = UIImage(name: "BottomNavigation/sheetOpen")
  }
  enum BottomSheet {
    static let exams = UIImage(name: "BottomSheet/exams")
    static let foodmark = UIImage(name: "BottomSheet/foodmark")
    static let home = UIImage(name: "BottomSheet/home")
    static let messenger = UIImage(name: "BottomSheet/messenger")
    static let pinboard = UIImage(name: "BottomSheet/pinboard")
    static let substitution = UIImage(name: "BottomSheet/substitution")
    static let surveys = UIImage(name: "BottomSheet/surveys")
    static let timetable = UIImage(name: "BottomSheet/timetable")
  }
  enum Home {
    static let exams = UIImage(name: "Home/exams")
    static let foodmark = UIImage(name: "Home/foodmark")
    static let home = UIImage(name: "Home/home")
    static let messenger = UIImage(name: "Home/messenger")
    static let pinboard = UIImage(name: "Home/pinboard")
    static let substitution = UIImage(name: "Home/substitution")
    static let surveys = UIImage(name: "Home/surveys")
    static let timetable = UIImage(name: "Home/timetable")
  }
  static let launchIcon = UIImage(name: "LaunchIcon")

  static let allImages: [UIImage] = [
    BackgroundImages.classRoom,
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
    Home.exams,
    Home.foodmark,
    Home.home,
    Home.messenger,
    Home.pinboard,
    Home.substitution,
    Home.surveys,
    Home.timetable,
    launchIcon,
  ]
}
