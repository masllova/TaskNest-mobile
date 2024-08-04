import SwiftUI
import Utils

public struct VCSText: View {
    private var text: String
    
    private var style: VCSTextStyle
    private var backgroundStyle: VCSViewBackgroundStyle
    
    public init(text: String,
                bindingText: Binding<String?> = Binding.constant(nil),
                style: VCSTextStyle = .init(),
                backgroundStyle: VCSViewBackgroundStyle = .init()) {
        self.text = text
        self.style = style
        self.backgroundStyle = backgroundStyle
    }
    
    public var body: some View {
        Text(text)
            .font(style.font)
            .foregroundColor(style.color)
            .lineLimit(style.lineLimit)
            .multilineTextAlignment(style.alignment)
            .setupBackground(with: backgroundStyle)
    }
}
