// Generated using Sourcery 0.8.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable cyclomatic_complexity file_length function_body_length line_length

import Foundation

// MARK: - AutoJSONSerializable for classes, protocols, structs

// MARK: - Pokemon AutoJSONSerializable
extension Pokemon: JSONSerializable {
    internal func toJSONObject() -> Any {
        var jsonObject = [String: Any]()
        let id = self.id
        jsonObject["identifier"] = id
        let name = self.name
        jsonObject["name"] = name
        let height = self.height
        jsonObject["height"] = height
        let weight = self.weight
        jsonObject["weight"] = weight
        let type = self.type
        jsonObject["type"] = type
        return jsonObject
    }
}

// MARK: -
