//
//  FHKToastInfoEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 7/3/26.
//

public enum ToastType {
    case success
    case error
    case warning
    case notification
}

public class FHKToastInfo: Equatable {
    public var type: ToastType
    public var message: String
    public var hasIcon: Bool
    
    public init(type: ToastType = .success, message: String = "", hasIcon: Bool = false) {
        self.type = type
        self.message = message
        self.hasIcon = hasIcon
    }
    
    public static func == (lhs: FHKToastInfo, rhs: FHKToastInfo) -> Bool {
        return lhs.type == rhs.type && lhs.message == rhs.message && lhs.hasIcon == rhs.hasIcon
    }
}
