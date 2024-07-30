import UIKit
import SwiftUI
import SnapKit

public final class AdaptiveHostingViewController<Content: View>: UIViewController {
    private var rootView: Content

    public init(rootView: Content) {
        self.rootView = rootView
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        let hostingController = UIHostingController(rootView: rootView)

        addChild(hostingController)
        view.addSubview(hostingController.view)

        hostingController.view.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        hostingController.didMove(toParent: self)
    }
}
