
import Foundation
import UIKit
import Utils
import TeamPage

public class TeamPageCoordinators: Coordinator {
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
        let vm = TeamPageViewModel(coordinator: self)
        let vc = TeamPageViewController(viewModel: vm)
        
        navigationController.setViewControllers([vc], animated: false)
    }
}
