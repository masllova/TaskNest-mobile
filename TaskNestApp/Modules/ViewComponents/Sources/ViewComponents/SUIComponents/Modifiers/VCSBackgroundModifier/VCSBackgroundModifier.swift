import SwiftUI

struct VCSBackgroundModifier: ViewModifier {
    var style: VCSViewBackgroundStyle
    
    func body(content: Content) -> some View {
        content
            .padding(.vertical, style.verticalPadding)
            .padding(.horizontal, style.horizontalPadding)
            .background(
                style.color
                    .frame(width: style.width, height: style.height)
                    .cornerRadius(style.cornerRadius)
                    .shadow(color: style.shadowColor, radius: style.shadowRadius)
            )
    }
}
