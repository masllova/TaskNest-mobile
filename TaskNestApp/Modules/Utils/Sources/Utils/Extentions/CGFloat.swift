import UIKit

public extension CGFloat {
    /// calculation relative to the horizontal layout
    static func calcToHorizontal(_ baseWidth: CGFloat) -> CGFloat {
        return (baseWidth / 390) * UIScreen.main.bounds.width
    }
    /// calculation relative to the vertical layout
    static func calcToVertical(_ baseHeight: CGFloat) -> CGFloat {
        return (baseHeight / 840) * UIScreen.main.bounds.height
    }
}
