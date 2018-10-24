//
//  Created by Cihat Gündüz on 24.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import MungoHealer
import UIKit

var mungo: MungoHealer! // swiftlint:disable:this implicitly_unwrapped_optional

final class ErrorHandling {
    // MARK: - Stored Type Properties
    static let shared = ErrorHandling()

    // MARK: - Instance Methods
    func setup(window: UIWindow) {
        let errorLogger: (String) -> Void = { log.error($0) }
        let errorHandler = AlertLogErrorHandler(window: window, logError: errorLogger)
        mungo = MungoHealer(errorHandler: errorHandler)
    }
}
