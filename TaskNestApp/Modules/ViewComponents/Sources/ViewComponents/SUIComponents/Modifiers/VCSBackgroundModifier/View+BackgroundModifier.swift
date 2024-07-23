import SwiftUI

extension View {
    func setupBackground(with style: VCSViewBackgroundStyle) -> some View {
        self.modifier(VCSBackgroundModifier(style: style))
    }
}
