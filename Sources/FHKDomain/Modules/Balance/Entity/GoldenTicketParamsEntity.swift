//
//  GoldenTicketParamsEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 18/4/26.
//

public struct GoldenTicketParamsEntity: Encodable {
    let recipientName: String
    let taskDescription: String
    let reward: String
    let validUntil: String
    let ticketCode: String
    let emailTo: String
}

public struct ResendResponse: Decodable {
    let id: String?
}
