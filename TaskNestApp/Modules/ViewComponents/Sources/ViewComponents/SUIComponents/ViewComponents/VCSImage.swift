import SwiftUI

public struct VCSImage: View {
    @Binding private var image: Image
    private var style: VCSImageStyle
    private var backgroundStyle: VCSViewBackgroundStyle
    private var onTap: (() -> Void)?
    
    public init(image: Binding<Image>,
                style: VCSImageStyle = .init(),
                backgroundStyle: VCSViewBackgroundStyle = .init(),
                onTap: (() -> Void)? = nil) {
        self._image = image
        self.style = style
        self.backgroundStyle = backgroundStyle
        self.onTap = onTap
    }
    
    public var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: style.mode)
            .frame(
                width: style.width,
                height: style.height
            )
            .cornerRadius(style.cornerRadius)
            .shadow(
                color: style.shadowColor,
                radius: style.shadowRadius
            )
            .setupBackground(with: backgroundStyle)
            .onTapGesture {
                onTap?()
            }
    }
}
