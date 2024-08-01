import SwiftUI
import Utils

public struct VCSImage: View {
    private var image: Image?
    @Binding private var bindingImage: Image?
    private var style: VCSImageStyle
    private var backgroundStyle: VCSViewBackgroundStyle
    
    private var bodyImage: Image {
        bindingImage ?? image ?? Image(.empty)
    }
    
    public init(image: Image? = nil,
                bindingImage: Binding<Image?> = Binding.constant(nil),
                style: VCSImageStyle = .init(),
                backgroundStyle: VCSViewBackgroundStyle = .init()) {
        self.image = image
        self._bindingImage = bindingImage
        self.style = style
        self.backgroundStyle = backgroundStyle
    }
    
    public var body: some View {
        bodyImage
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
