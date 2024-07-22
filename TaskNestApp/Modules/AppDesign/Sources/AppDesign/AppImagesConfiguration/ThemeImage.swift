import UIKit
import SwiftUI

struct ThemeImage {
    let image: UIImage
    
    init(name: String) {
        self.image = .init(
            named: name
        ) ?? .init()
    }
}

extension ThemeImage {
    @available(iOS 13.0, *)
    public func getSUI() -> Image {
        return .init(
            uiImage: image
        )
    }
}
