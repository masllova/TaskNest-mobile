import UIKit
import SwiftUI

public struct ThemeImage {
    private let image: UIImage
    
    public init(name: String) {
        self.image = .init(
            named: name
        ) ?? .init()
    }
}

public extension ThemeImage {
    func getSUI() -> Image {
        return .init(
            uiImage: image
        )
    }
}
