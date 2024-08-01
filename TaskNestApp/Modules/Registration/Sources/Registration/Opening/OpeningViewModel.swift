import Foundation
import Utils

public class OpeningViewModel: Coordinating, ObservableObject {
    // MARK: - Properies
    public var coordinator: Coordinator?
    
    @Published var isFirstStep: Bool = true
    
    // MARK: - init
    public init(coordinator: Coordinator?) {
        self.coordinator = coordinator
    }
}

public extension OpeningViewModel {
    func onSkipTap() {
        
    }
    
    func onNextTap() {
        
    }
}
