//
//  AnalyticsEvent.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public enum AnalyticsEvent: Sendable {
    case screenView(Screen)
    case tapButton(Button)
    case error(ErrorDetail)
    
    public struct Screen: Equatable, Sendable {
        public let name: String
        public let screenClass: String
        
        public init(name: String, screenClass: String) {
            self.name = name
            self.screenClass = screenClass
        }
    }
    
    public struct Button: Equatable, Sendable {
        public let name: String
        
        public init(name: String) {
            self.name = name
        }
    }
    
    public struct ErrorDetail: Equatable, Sendable {
        public let type: String
        public let message: String
        
        public init(type: String, message: String) {
            self.type = type
            self.message = message
        }
    }
}
