//
//  Created by Cihat Gündüz on 15.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

extension UIImage {
    func templateImage(color: UIColor) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        defer { UIGraphicsEndImageContext() }

        let rect = CGRect(origin: .zero, size: size)

        let context = UIGraphicsGetCurrentContext()
        color.setFill()
        context?.translateBy(x: 0, y: size.height)
        context?.scaleBy(x: 1.0, y: -1.0)
        context?.clip(to: rect, mask: cgImage!)
        context?.fill(rect)

        return UIGraphicsGetImageFromCurrentImageContext()!
    }
}
