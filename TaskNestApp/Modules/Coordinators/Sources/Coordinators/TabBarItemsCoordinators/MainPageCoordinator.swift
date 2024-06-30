
import Foundation
import UIKit
import Utils
import MainPage

public class MainPageCoordinator: Coordinator {
    // MARK: - Properties
    
    public var navigationController: UINavigationController
    
    // MARK: - init
    
    public init(navigationController: UINavigationController = .init()) {
        self.navigationController = navigationController
    }
    
    // MARK: - Functions
    
    public func eventOccurred(with type: NavigationEvent) {
        
    }
    
    public func start() {
        let vm = MainPageViewModel(coordinator: self)
        let vc = MainPageViewController(viewModel: vm)
        
        navigationController.setViewControllers([vc], animated: false)
    }
}
