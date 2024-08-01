
import SwiftUI

public struct VCSViewBackgroundStyle {
    let color: Color
    let cornerRadius: CGFloat
    let shadowColor: Color
    let shadowRadius: CGFloat
    let width: CGFloat
    let height: CGFloat
    let verticalPadding: CGFloat
    let horizontalPadding: CGFloat
    
    public init(color: Color = .clear,
                cornerRadius: CGFloat = .zero,
                shadowColor: Color = .clear,
                shadowRadius: CGFloat = .zero,
                width: CGFloat = .infinity,
                height: CGFloat = .infinity,
                verticalPadding: CGFloat = .zero,
                horizontalPadding: CGFloat = .zero) {
        self.color = color
        self.cornerRadius = cornerRadius
        self.shadowColor = shadowColor
        self.shadowRadius = shadowRadius
        self.width = width
        self.height = height
        self.verticalPadding = verticalPadding
        self.horizontalPadding = horizontalPadding
    }
}
