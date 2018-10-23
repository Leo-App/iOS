//
//  Created by Cihat Gündüz on 23.10.18.
//  Copyright © 2018 Cihat Gündüz. All rights reserved.
//

import HandySwift
import HandyUIKit
import UIKit

protocol SteppedModalPresentable {
    func steppedModalDidUpdate(fullScreen: Bool)
}

class SteppedModalPresentationController: UIPresentationController {
    var fullScreen: Bool = false {
        didSet {
            let animations = { self.containerViewWillLayoutSubviews() }
            UIView.animate(withDuration: .milliseconds(250), delay: 0, options: .curveEaseOut, animations: animations) { _ in
                if let presentedViewCtrl = self.presentedViewController as? SteppedModalPresentable {
                    presentedViewCtrl.steppedModalDidUpdate(fullScreen: self.fullScreen)
                }
            }
        }
    }

    var backgroundView: UIView! // swiftlint:disable:this implicitly_unwrapped_optional
    var unsafeAreaView: UIView! // swiftlint:disable:this implicitly_unwrapped_optional

    override var frameOfPresentedViewInContainerView: CGRect {
        let size = self.size(forChildContentContainer: presentedViewController, withParentContainerSize: containerView!.bounds.size)
        var unsafeAreaHeight: CGFloat = 0

        if fullScreen {
            unsafeAreaHeight = max(UIApplication.shared.keyWindow!.safeAreaInsets.top, UIApplication.shared.statusBarFrame.height)
        }

        return CGRect(
            x: 0,
            y: containerView!.bounds.height - size.height + unsafeAreaHeight,
            width: size.width,
            height: size.height
        )
    }

    override init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController?) {
        super.init(presentedViewController: presentedViewController, presenting: presentingViewController)
        configureViews()
    }

    func configureViews() {
        let unsafeAreaHeight = max(UIApplication.shared.keyWindow!.safeAreaInsets.top, UIApplication.shared.statusBarFrame.height)
        unsafeAreaView = UIView(frame: CGRect(width: UIScreen.main.bounds.width, height: unsafeAreaHeight))
        unsafeAreaView.backgroundColor = .white
        unsafeAreaView.alpha = 0

        backgroundView = UIVisualEffectView(effect: UIBlurEffect(style: .regular))
        backgroundView.alpha = 0

        let recognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(recognizer:)))
        backgroundView.addGestureRecognizer(recognizer)
    }

    @objc
    func handleTap(recognizer: UITapGestureRecognizer) {
        presentingViewController.dismiss(animated: true)
    }

    override func presentationTransitionWillBegin() {
        containerView?.insertSubview(backgroundView, at: 0)
        containerView?.insertSubview(unsafeAreaView, aboveSubview: backgroundView)
        backgroundView.bindEdgesToSuperview()

        setTransitionAnimation { [weak self] in
            self?.backgroundView.alpha = 1
        }
    }

    override func dismissalTransitionWillBegin() {
        setTransitionAnimation { [weak self] in
            self?.backgroundView.alpha = 0
        }
    }

    override func containerViewWillLayoutSubviews() {
        unsafeAreaView.alpha = fullScreen ? 1 : 0
        presentedView?.frame = frameOfPresentedViewInContainerView

        presentedView?.layer.cornerRadius = fullScreen ? 0 : 10
        presentedView?.clipsToBounds = true
    }

    override func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize {
        if fullScreen {
            return parentSize
        } else {
            return CGSize(width: parentSize.width, height: parentSize.height / 2)
        }
    }

    private func setTransitionAnimation(_ animation: @escaping () -> Void) {
        guard let transitionCoordinator = presentedViewController.transitionCoordinator else {
            animation()
            return
        }

        transitionCoordinator.animate(alongsideTransition: { _ in animation() }, completion: nil)
    }
}
