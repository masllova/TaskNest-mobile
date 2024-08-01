import SwiftUI
import Utils

public struct VCSText: View {
    private var text: String?
    @Binding private var bindingText: String?
    
    private var style: VCSTextStyle
    private var backgroundStyle: VCSViewBackgroundStyle
    
    private var bodyText: String {
        bindingText ?? text.orEmpty
    }
    
    public init(text: String? = nil,
                bindingText: Binding<String?> = Binding.constant(nil),
                style: VCSTextStyle = .init(),
                backgroundStyle: VCSViewBackgroundStyle = .init()) {
        self.text = text
        self._bindingText = bindingText
        self.style = style
        self.backgroundStyle = backgroundStyle
    }
    
    public var body: some View {
        Text(bodyText)
            .font(style.font)
            .foregroundColor(style.color)
            .lineLimit(style.lineLimit)
            .multilineTextAlignment(style.alignment)
            .setupBackground(with: backgroundStyle)
    }
}
