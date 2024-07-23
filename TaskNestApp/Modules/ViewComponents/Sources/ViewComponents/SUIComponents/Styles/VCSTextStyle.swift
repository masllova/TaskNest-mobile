import SwiftUI

public struct VCSTextStyle {
    let font: Font
    let color: Color
    let lineLimit: Int
    let alignment: TextAlignment
    
    public init(font: Font = .caption,
                color: Color = .black,
                lineLimit: Int = .zero,
                alignment: TextAlignment = .center) {
        self.font = font
        self.color = color
        self.lineLimit = lineLimit
        self.alignment = alignment
    }
}
