//
//  FHKToastInfoEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 7/3/26.
//

public enum ToastType: Sendable {
    case success
    case error
    case warning
    case notification
}

public struct FHKToastInfo: Equatable, Sendable {
    public var type: ToastType
    public var message: String
    public var hasIcon: Bool
    
    public init(type: ToastType = .success, message: String = "", hasIcon: Bool = false) {
        self.type = type
        self.message = message
        self.hasIcon = hasIcon
    }
}
