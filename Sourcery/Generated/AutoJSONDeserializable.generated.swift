// Generated using Sourcery 0.8.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable cyclomatic_complexity file_length function_body_length line_length

import Foundation

// MARK: - AutoJSONDeserializable for classes, protocols, structs

// MARK: - Pokemon AutoJSONDeserializable
extension Pokemon: JSONDeserializable {
    internal init?(JSONObject: Any) {
        guard let JSONObject = JSONObject as? [String: Any] else { return nil }
        guard let id = (JSONObject["identifier"] as? String) else { return nil }
        self.id = id
        guard let name = (JSONObject["name"] as? String) else { return nil }
        self.name = name
        guard let height = (JSONObject["height"] as? Float) else { return nil }
        self.height = height
        guard let weight = (JSONObject["weight"] as? Float) else { return nil }
        self.weight = weight
        guard let type = (JSONObject["type"] as? PokemonType) else { return nil }
        self.type = type
    }
}

// MARK: -
