//
//  FHKSupabaseBalance+Test+Preview.swift
//  FHKDomain
//
//  Created by Fredy Leon on 30/3/26.
//

import Foundation

//public protocol FHKSupabaseBalanceProtocol: FHKInjectableProtocol {
//    func fetchBalance(memberId: UUID) async throws -> BalanceEntity
//    func updateKidsCoinsBalance(memberId: UUID, infoBalance: BalanceKidsCoinsEntity) async throws
//    func updateTimeBalance(memberId: UUID, infoBalance: BalanceTimeEntity) async throws
//    func sendGoldenTicket(data: GoldenTicketParamsEntity) async throws
//}

public struct FHKSupabaseBalance: Sendable {
    
    public var fetchBalance:
    @Sendable(UUID) async throws -> BalanceEntity = { _ in throw FHKSupabaseError.notImplemented }
    
    public var updateKidsCoinsBalance:
    @Sendable(UUID, BalanceKidsCoinsEntity) async throws -> Void = { _, _ in }
    
    public var updateTimeBalance:
    @Sendable(UUID, BalanceTimeEntity) async throws -> Void = { _, _ in }
    
    public var sendGoldenTicket:
    @Sendable(GoldenTicketParamsEntity) async throws -> Void = { _ in }
    
    public init() {}
}

public extension FHKSupabaseBalance {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var balance = Self()
        
        balance.fetchBalance = { memberId in
            BalanceEntity(memberId: memberId, coinsObtained: 100, timeObtained: "10 hours")
        }
        
        balance.updateKidsCoinsBalance = { _, _ in }
        balance.updateTimeBalance = { _, _ in }
        balance.sendGoldenTicket = { _ in }
        
        return balance
    }
}
