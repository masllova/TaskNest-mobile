
import UIKit
import Utils
import Registration

public class RegistrationCoordinator: Coordinator {
    // MARK: - Properties
    
    public var navigationController: UINavigationController
    private var onCompletionFlow: (() -> Void)
    
    // MARK: - init
    
    public init(navigationController: UINavigationController = .init(),
                onCompletionFlow: @escaping (() -> Void)) {
        self.navigationController = navigationController
        self.onCompletionFlow = onCompletionFlow
    }
    
    // MARK: - Functions
    
    public func eventOccurred(with type: NavigationEvent) {
        
    }
    
    public func start() {
        var vc: UIViewController {
            if true { // replace to CacheService.shared.hasShownOpening
                return AdaptiveHostingViewController(rootView: OpeningView())
            }
            return RegistrationViewController(
                viewModel: .init(
                    coordinator: self
                )
            )
        }
        navigationController.setViewControllers([vc], animated: false)
    }
}

public extension RegistrationCoordinator {
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
