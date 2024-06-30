import Foundation
import Utils

public class PersonalPageViewModel: Coordinating {
    // MARK: - Properies
    public var coordinator: Coordinator?
    
    // MARK: - init
    public init(coordinator: Coordinator?) {
        self.coordinator = coordinator
    }
}
