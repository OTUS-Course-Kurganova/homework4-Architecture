//
// LaureateWikidata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LaureateWikidata: Codable, JSONEncodable, Hashable {

    /** Wikidata id */
    public var id: String?
    /** URL to wikidata entry */
    public var url: String?

    public init(id: String? = nil, url: String? = nil) {
        self.id = id
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(url, forKey: .url)
    }
}
