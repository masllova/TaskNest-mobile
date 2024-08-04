import SwiftUI
import ViewComponents
import AppDesign

public struct RegistrationView: View {
    @ObservedObject var viewModel: RegistrationViewModel
    
    public init(viewModel: RegistrationViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        Text("hi")
    }
}

