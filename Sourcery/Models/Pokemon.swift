//
//  Pokemon.swift
//  Sourcery
//
//  Created by Vedran Burojevic on 20/09/2017.
//  Copyright © 2017 Infinum. All rights reserved.
//

import Foundation

enum PokemonType {
	case fire
	case water
	case grass
	case electric
}

// sourcery: AutoJSONSerializable, AutoJSONDeserializable
struct Pokemon {
	// sourcery: JSONKey = "identifier"
	let id: String
	let name: String
	let height: Float
	let weight: Float
	let type: PokemonType
}
