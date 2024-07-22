import UIKit
import SwiftUI

struct ResizableFont {
    let name: String
    
    func get(size: CGFloat) -> UIFont? {
        return .init(
            name: name,
            size: size
        )
    }
    
    @available(iOS 13.0, *)
    func getSUI(size: CGFloat) -> Font? {
        return .custom(
            name,
            size: size
        )
    }
}
