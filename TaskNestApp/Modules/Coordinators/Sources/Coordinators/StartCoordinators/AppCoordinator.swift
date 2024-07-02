
import Foundation
import UIKit
import Utils

public class AppCoordinator: Coordinator {
    // MARK: - Properties
    
    public var navigationController: UINavigationController
    public var window: UIWindow?
    
    // MARK: - init
    
    public init(window: UIWindow, navigationController: UINavigationController = .init()) {
        self.window = window
        self.navigationController = navigationController
    }
    
    // MARK: - Functions
    
    public func eventOccurred(with type: NavigationEvent) {
        
    }
    
    public func start() {
        window?.rootViewController =  CacheService.shared.isLoggedIn
        ? makeTabBarController()
        : makeRegistrationController()
        window?.makeKeyAndVisible()
    }
}

private extension AppCoordinator {
    func makeRegistrationController() -> UIViewController {
        let coordinator = RegistrationCoordinator()
        coordinator.start()
        return coordinator.navigationController
    }
    
    func makeTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()
        
        let mainPageCoordinator = MainPageCoordinator()
        let teamPageCoordinator = TeamPageCoordinators()
        let personalPageCoordinator = PersonalPageCoordinators()
        
        tabBarController.viewControllers = [
            mainPageCoordinator.navigationController,
            teamPageCoordinator.navigationController,
            personalPageCoordinator.navigationController
        ]
        
        mainPageCoordinator.navigationController.tabBarItem = UITabBarItem(title: "Main", image: nil, tag: 0)
        teamPageCoordinator.navigationController.tabBarItem = UITabBarItem(title: "Team", image: nil, tag: 1)
        personalPageCoordinator.navigationController.tabBarItem = UITabBarItem(title: "Personal", image: nil, tag: 2)
        
        mainPageCoordinator.start()
        teamPageCoordinator.start()
        personalPageCoordinator.start()
        
        return tabBarController
    }
}
