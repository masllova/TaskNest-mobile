import Foundation
import Utils

public class MainPageViewModel: Coordinating {
    // MARK: - Properies
    public var coordinator: Coordinator?
    
    // MARK: - init
    public init(coordinator: Coordinator?) {
        self.coordinator = coordinator
    }
}
