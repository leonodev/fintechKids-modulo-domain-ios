
import Foundation

public struct FHKUserSession: Sendable {
    public let id: UUID
    public let email: String
    public let accessToken: String
    public let refreshToken: String
    public let expiresAt: Date
    public let infoAditional: InfoAditional?

    public init(id: UUID,
                email: String,
                accessToken: String,
                refreshToken: String,
                expiresAt: Date,
                infoAditional: InfoAditional? = nil
    ) {
        self.id = id
        self.email = email
        self.accessToken = accessToken
        self.refreshToken = refreshToken
        self.expiresAt = expiresAt
        self.infoAditional = infoAditional
    }
}

public struct InfoAditional: Sendable {
    public let pinApproved: String
    public let familyName: String
    
    public init(pinApproved: String, familyName: String) {
        self.pinApproved = pinApproved
        self.familyName = familyName
    }
}
