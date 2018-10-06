// swiftlint:disable all
// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name
internal enum L10n {

  internal enum Module {
    internal enum Exams {
      /// Exams
      internal static let name = L10n.tr("Localizable", "MODULE.EXAMS.NAME")
    }
    internal enum Foodmark {
      /// Foodmark
      internal static let name = L10n.tr("Localizable", "MODULE.FOODMARK.NAME")
    }
    internal enum Home {
      /// Home
      internal static let name = L10n.tr("Localizable", "MODULE.HOME.NAME")
    }
    internal enum Messenger {
      /// Messenger
      internal static let name = L10n.tr("Localizable", "MODULE.MESSENGER.NAME")
    }
    internal enum Pinboard {
      /// Pinboard
      internal static let name = L10n.tr("Localizable", "MODULE.PINBOARD.NAME")
    }
    internal enum Substitution {
      /// Substitution
      internal static let name = L10n.tr("Localizable", "MODULE.SUBSTITUTION.NAME")
    }
    internal enum Surveys {
      /// Surveys
      internal static let name = L10n.tr("Localizable", "MODULE.SURVEYS.NAME")
    }
    internal enum Timetable {
      /// Timetable
      internal static let name = L10n.tr("Localizable", "MODULE.TIMETABLE.NAME")
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String) -> String {
    return NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
  }

  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {}
