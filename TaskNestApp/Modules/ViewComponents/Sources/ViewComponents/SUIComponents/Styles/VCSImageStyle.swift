
import SwiftUI

public struct VCSImageStyle {
    let mode: ContentMode
    let cornerRadius: CGFloat
    let shadowColor: Color
    let shadowRadius: CGFloat
    let width: CGFloat
    let height: CGFloat
    
    public init(mode: ContentMode = .fill,
                cornerRadius: CGFloat = .zero,
                shadowColor: Color = .clear,
                shadowRadius: CGFloat = .zero,
                width: CGFloat = .infinity,
                height: CGFloat = .infinity) {
        self.mode = mode
        self.cornerRadius = cornerRadius
        self.shadowColor = shadowColor
        self.shadowRadius = shadowRadius
        self.width = width
        self.height = height
    }
}
