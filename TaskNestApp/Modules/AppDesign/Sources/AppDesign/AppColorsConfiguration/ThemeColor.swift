import UIKit
import SwiftUI

public struct ThemeColor {
    private let light: UIColor
    private let dark: UIColor
    
    public init(lightHex: String, darkHex: String) {
        self.light = .init(hex: lightHex)
        self.dark = .init(hex: darkHex)
    }
}

public extension ThemeColor {
    func get() -> UIColor {
        return UIScreen.main.traitCollection.userInterfaceStyle == .dark ? dark : light
    }
    
    func getSUI() -> Color {
        return .init(
            get()
        )
    }
}
