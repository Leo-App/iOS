//
//  Created by Cihat Gündüz on 27.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    var viewModel: HomeViewModel! // swiftlint:disable:this implicitly_unwrapped_optional

    @IBOutlet private var backgroundImageView: UIImageView!
    @IBOutlet private var collectionViewFlowLayout: UICollectionViewFlowLayout!

    override func viewDidLoad() {
        super.viewDidLoad()

        backgroundImageView.image = viewModel.backgroundImage
        configureLayout()
    }

    private func configureLayout() {
        collectionViewFlowLayout.minimumInteritemSpacing = 8
        collectionViewFlowLayout.itemSize = CGSize(width: 100, height: 140)
        collectionViewFlowLayout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 12, right: 16)
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.shortLinkEntries.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeShortLinkCell", for: indexPath) as! HomeShortLinkCell
        cell.shortLinkEntry = viewModel.shortLinkEntries[indexPath.item]
        return cell
    }
}
