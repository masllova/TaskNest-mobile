import UIKit
import SwiftUI

public struct ResizableFont {
    private let name: String
    
    public init(name: String) {
        self.name = name
    }
}

public extension ResizableFont {
    func get(size: CGFloat) -> UIFont {
        return .init(
            name: name,
            size: size
        ) ?? .systemFont(ofSize: size)
    }
    
    func getSUI(size: CGFloat) -> Font {
        return .custom(
            name,
            size: size
        )
    }
}
