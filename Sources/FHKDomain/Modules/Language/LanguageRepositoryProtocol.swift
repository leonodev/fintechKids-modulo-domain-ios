//
//  LanguageRepository.swift
//  FHKDomain
//
//  Created by Fredy Leon on 3/3/26.
//


public protocol FHKLanguageRepositoryProtocol: FHKInjectableProtocol {
    func fetchRemoteConfig(completion: @escaping ((any Error)?) -> [String])
    func changeLanguageApp(_ language: String) async
}
