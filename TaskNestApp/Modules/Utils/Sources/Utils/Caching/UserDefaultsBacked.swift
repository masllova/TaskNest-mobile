
import Foundation

@propertyWrapper
public struct UserDefaultsBacked<T> {
    let key: CacheKeys
    let defaultValue: T

    public var wrappedValue: T {
        get {
            return UserDefaults.standard.object(forKey: key.rawValue) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key.rawValue)
        }
    }
}
