//
//  Created by Cihat Gündüz on 29.09.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

class BottomSheetModelController: NSObject {
    // TODO: not yet implemented
}

extension BottomSheetModelController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ModuleManager.shared.activeModules.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BottomSheetCell") as! BottomSheetTableViewCell

        cell.title = ModuleManager.shared.activeModules[indexPath.row].name
        cell.iconImage = ModuleManager.shared.activeModules[indexPath.row].menuIconImage

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48
    }
}

extension BottomSheetModelController: UITableViewDelegate {
    // TODO: not yet implemented
}
