//
//  Created by Cihat Gündüz on 29.09.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

protocol BottomSheetFlowDelegate: class {
    func openCloseButtonPressed()
    func didSelectModule(_ module: Module)
}

class BottomSheetViewController: UIViewController {
    weak var flowDelegate: BottomSheetFlowDelegate?

    @IBOutlet private var headerView: BottomSheetHeaderView!

    @IBOutlet private var tableView: UITableView! {
        didSet {
            tableView.separatorStyle = .none
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        headerView.delegate = self
    }
}

extension BottomSheetViewController: UITableViewDataSource {
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
        return 56
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 56
    }
}

extension BottomSheetViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? BottomSheetTableViewCell
        cell?.highlight()
    }

    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? BottomSheetTableViewCell
        cell?.unhighlight()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? BottomSheetTableViewCell
        cell?.highlight()

        flowDelegate?.didSelectModule(ModuleManager.shared.activeModules[indexPath.row])
    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? BottomSheetTableViewCell
        cell?.unhighlight()
    }
}

extension BottomSheetViewController: BottomSheetHeaderViewDelegate {
    func openCloseButtonPressed() {
        flowDelegate?.openCloseButtonPressed()
    }
}

extension BottomSheetViewController: SteppedModalPresentable {
    func steppedModalDidUpdate(fullScreen: Bool) {
        headerView.fullScreen = fullScreen
    }
}
