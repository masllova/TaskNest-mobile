import Foundation
import Utils

public class RegistrationViewModel: Coordinating, ObservableObject {
    // MARK: - Properies
    public var coordinator: Coordinator?
    
    private var saveToken: (String) -> Void
    
    // MARK: - init
    public init(coordinator: Coordinator?,
                saveToken: @escaping (String) -> Void) {
        self.coordinator = coordinator
        self.saveToken = saveToken
    }
}
