
import Foundation
import UIKit
import Utils
import PersonalPage

public class PersonalPageCoordinators: Coordinator {
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
        let vm = PersonalPageViewModel(coordinator: self)
        let vc = PersonalPageViewController(viewModel: vm)
        
        navigationController.setViewControllers([vc], animated: false)
    }
    public func finish() {
        //
    }
}

