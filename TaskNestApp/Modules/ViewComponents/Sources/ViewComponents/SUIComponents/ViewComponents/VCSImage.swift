import SwiftUI
import Utils

public struct VCSImage: View {
    private var image: Image
    private var style: VCSImageStyle
    private var backgroundStyle: VCSViewBackgroundStyle
    
    public init(image: Image,
                style: VCSImageStyle = .init(),
                backgroundStyle: VCSViewBackgroundStyle = .init()) {
        self.image = image
        self.style = style
        self.backgroundStyle = backgroundStyle
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
    }
}
