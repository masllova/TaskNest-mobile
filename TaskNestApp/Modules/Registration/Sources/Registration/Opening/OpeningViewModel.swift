import SwiftUI
import Utils

public class OpeningViewModel: Coordinating, ObservableObject {
    // MARK: - Properies
    public var coordinator: Coordinator?
    
    @Published var isFirstStep: Bool = true
    let pageCount = 2
    
    private var currentPage = 0
    
    // MARK: - init
    public init(coordinator: Coordinator?) {
        self.coordinator = coordinator
    }
}

public extension OpeningViewModel {
    func onSkipTap() {
        coordinator?.eventOccurred(
            with: .skipButtonTap
        )
    }
    
    func onNextTap(pageUpdater: (Int) -> Void) {
        if isFirstStep {
            if pageCount - currentPage > 1 {
                currentPage += 1
                isFirstStep.toggle()
                pageUpdater(currentPage)
            }
        } else {
            onSkipTap()
        }
    }
    
    func onBackButtonTap(pageUpdater: (Int) -> Void) {
        if !isFirstStep {
            if currentPage > 0 {
                currentPage -= 1
                isFirstStep.toggle()
                pageUpdater(currentPage)
            }
        }
    }
}
