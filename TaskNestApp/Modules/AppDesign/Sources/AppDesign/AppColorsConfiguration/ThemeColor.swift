import UIKit
import SwiftUI

struct ThemeColor {
    let light: UIColor
    let dark: UIColor
    
    init(lightHex: String, darkHex: String) {
        self.light = .init(hex: lightHex)
        self.dark = .init(hex: darkHex)
    }
}

extension ThemeColor {
    public func get() -> UIColor {
        return UIScreen.main.traitCollection.userInterfaceStyle == .dark ? dark : light
    }
    
    @available(iOS 13.0, *)
    public func getSUI() -> Color {
        return .init(
            get()
        )
    }
}
