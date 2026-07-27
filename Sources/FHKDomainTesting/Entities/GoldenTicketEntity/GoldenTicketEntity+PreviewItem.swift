//
//  GoldenTicketEntityPreviewItem.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import Foundation
import FHKDomain

public extension GoldenTicketEntity {
    static var previewItem: Self {
        GoldenTicketEntity(recipientName: "My son",
                           taskDescription: "having taken care of ...",
                           reward: "10 World Cup soccer card packs",
                           ticketCode: "4234556345567")
    }
}
