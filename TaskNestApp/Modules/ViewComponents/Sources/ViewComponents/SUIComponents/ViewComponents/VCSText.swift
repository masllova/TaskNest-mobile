import SwiftUI
import Utils

public struct VCSText: View {
    private var text: String?
    @Binding private var bindingText: String?
    
    private var style: VCSTextStyle
    private var backgroundStyle: VCSViewBackgroundStyle
    private var onTap: (() -> Void)?
    
    private var bodyText: String {
        bindingText ?? text.orEmpty
    }
    
    public init(text: String?,
                bindingText: Binding<String?>,
                style: VCSTextStyle = .init(),
                backgroundStyle: VCSViewBackgroundStyle = .init(),
                onTap: (() -> Void)? = nil) {
        self.text = text
        self._bindingText = bindingText
        self.style = style
        self.backgroundStyle = backgroundStyle
        self.onTap = onTap
    }
    
    public var body: some View {
        Text(bodyText)
            .font(style.font)
            .foregroundColor(style.color)
            .lineLimit(style.lineLimit)
            .multilineTextAlignment(style.alignment)
            .setupBackground(with: backgroundStyle)
            .onTapGesture {
                onTap?()
            }
    }
}
