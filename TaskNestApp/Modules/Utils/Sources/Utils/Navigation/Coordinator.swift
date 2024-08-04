
import Foundation
import UIKit

public protocol Coordinator {
    var navigationController: UINavigationController { get set }
    
    func eventOccurred(with type: NavigationEvent)
    func start()
    func finish()
}
