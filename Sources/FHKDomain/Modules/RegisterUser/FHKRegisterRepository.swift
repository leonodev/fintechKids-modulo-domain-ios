//
//  FHKRegisterRepository.swift
//  FHKDomain
//
//  Created by Fredy Leon on 2/3/26.
//

import Foundation

public struct FHKRegisterRepository: Sendable {
    public var register: @Sendable (_ registerEntity: RegisterUserEntity) async throws -> FHKUserSession = { _ in
        throw NSError(domain: "FHKRegisterRepository.register no implementado", code: 0)
    }
    
    public var saveFamilyInfoKeychain: @Sendable (_ familyName: String) throws -> Void = { _ in }

    public init() {}
}

public extension FHKRegisterRepository {
    static var test: Self {
        Self()
    }
}
