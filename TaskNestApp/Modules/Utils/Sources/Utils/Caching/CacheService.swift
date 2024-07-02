
public class CacheService {
    public static let shared = CacheService()
    
    @UserDefaultsBacked(key: .token, defaultValue: nil)
    public var token: String?

    @UserDefaultsBacked(key: .hasShownOpening, defaultValue: false)
    public var hasShownOpening: Bool

    @UserDefaultsBacked(key: .isLoggedIn, defaultValue: false)
    public var isLoggedIn: Bool
}
