import Foundation
import Utils

public class TeamPageViewModel: Coordinating {
    // MARK: - Properies
    public var coordinator: Coordinator?
    
    // MARK: - init
    public init(coordinator: Coordinator?) {
        self.coordinator = coordinator
    }
}
