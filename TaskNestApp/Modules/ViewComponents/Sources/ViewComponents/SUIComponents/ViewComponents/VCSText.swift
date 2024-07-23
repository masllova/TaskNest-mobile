import SwiftUI

public struct VCSText: View {
    @Binding private var text: String
    private var style: VCSTextStyle
    private var backgroundStyle: VCSViewBackgroundStyle
    private var onTap: (() -> Void)?
    
    public init(text: Binding<String>,
                style: VCSTextStyle = .init(),
                backgroundStyle: VCSViewBackgroundStyle = .init(),
                onTap: (() -> Void)? = nil) {
        self._text = text
        self.style = style
        self.backgroundStyle = backgroundStyle
        self.onTap = onTap
    }
    
    public var body: some View {
        Text(text)
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
