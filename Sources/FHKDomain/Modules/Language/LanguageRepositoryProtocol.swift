//
//  LanguageRepository.swift
//  FHKDomain
//
//  Created by Fredy Leon on 3/3/26.
//


public protocol FHKLanguageRepositoryProtocol: FHKInjectableProtocol {
    func fetchConfig(completion: @escaping ([String]) -> Void)
    func changeLanguageApp(_ language: String) async
}
