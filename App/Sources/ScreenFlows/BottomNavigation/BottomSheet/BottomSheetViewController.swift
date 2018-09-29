//
//  Created by Cihat Gündüz on 29.09.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

class BottomSheetViewController: UIViewController {
    private let modelController = BottomSheetModelController()

    @IBOutlet private var tableView: UITableView! {
        didSet {
            tableView.dataSource = modelController
        }
    }
}

extension BottomSheetModelController: UITableViewDelegate {
    // TODO: not yet implemented
}
