
import UIKit
import Utils
import Registration

public class RegistrationCoordinator: Coordinator {
    // MARK: - Properties
    
    public var navigationController: UINavigationController
    private var onCompletionFlow: () -> Void
    
    // MARK: - init
    
    public init(navigationController: UINavigationController = .init(),
                onCompletionFlow: @escaping (() -> Void)) {
        self.navigationController = navigationController
        self.onCompletionFlow = onCompletionFlow
    }
    
    // MARK: - Functions
    
    public func eventOccurred(with type: NavigationEvent) {
        switch type {
        case .backButtonTap:
            break
        case .skipButtonTap:
            setTheOpeningWasShown()
            let vc = getRegistrationVC()
            navigationController.viewControllers.removeAll()
            navigationController.setViewControllers([vc], animated: false)
        }
    }
    
    public func start() {
        var vc: UIViewController {
            if CacheService.shared.hasShownOpening {
                return getOpeningVC()
            }
            return getRegistrationVC()
        }
        navigationController.setViewControllers([vc], animated: false)
    }
    
    public func finish() {
        navigationController.viewControllers.removeAll()
        onCompletionFlow()
    }
}

private extension RegistrationCoordinator {
    func getRegistrationVC() -> UIViewController {
        return AdaptiveHostingViewController(
            rootView: RegistrationView(
                viewModel: .init(
                    coordinator: self
                ) { [weak self] token in
                    guard let self else {
                        return
                    }
                    self.setTheUserIsRegistered(with: token)
                    self.finish()
                }
            )
        )
    }
    
    func getOpeningVC() -> UIViewController {
        return AdaptiveHostingViewController(
            rootView: OpeningView(
                viewModel: .init(
                    coordinator: self
                )
            )
        )
    }
    
    func setTheOpeningWasShown() {
        CacheService.shared.hasShownOpening = true
    }
    
    func setTheUserIsRegistered(with token: String) {
        CacheService.shared.isLoggedIn = true
        CacheService.shared.token = token
        
        navigationController.popViewController(animated: true)
        navigationController.viewControllers.removeAll()
        onCompletionFlow()
    }
}
