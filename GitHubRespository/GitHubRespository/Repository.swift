//
//  Repository.swift
//  GitHubRespository
//
//  Created by tmoney on 2023/02/27.
//

import Foundation

struct Repository: Decodable {
    let id: Int
    let name: String
    let description: String
    let stargazerCount: Int
    let language: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, description, language
        case stargazerCount = "stargazers_count"
    }
}
