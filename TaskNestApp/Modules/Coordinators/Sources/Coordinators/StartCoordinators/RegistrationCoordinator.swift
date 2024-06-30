
import Foundation
import UIKit
import Utils

public class RegistrationCoordinator: Coordinator {
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
        
    }
    
    private func needShowOpenning() -> Bool {
        return false
    }
}
