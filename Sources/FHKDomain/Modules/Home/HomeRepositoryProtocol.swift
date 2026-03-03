//
//  HomeRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 3/3/26.
//

public protocol HomeRepositoryProtocol: FHKInjectableProtocol {
    func fetchMembers(email: String) async throws
}
