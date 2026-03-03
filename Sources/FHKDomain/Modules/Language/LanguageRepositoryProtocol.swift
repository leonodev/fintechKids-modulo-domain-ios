//
//  LanguageRepository.swift
//  FHKDomain
//
//  Created by Fredy Leon on 3/3/26.
//


public protocol FHKLanguageRepositoryProtocol: FHKInjectableProtocol {
    func fetchConfig() async -> [String]
    func changeLanguageApp(_ language: String) async
}
