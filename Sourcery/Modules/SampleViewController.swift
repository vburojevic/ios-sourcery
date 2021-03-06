//
//  SampleViewController.swift
//  Sourcery
//
//  Created by Vedran Burojevic on 23/09/2017.
//  Copyright (c) 2017 Infinum. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class SampleViewController: UIViewController {
	
	// MARK: - Public properties -
	
	var presenter: SamplePresenterInterface!

	// MARK: - Private properties -
	
	private let pikachu1 = Pokemon(id: "1", name: "Pikachu", height: 23, weight: 5, type: .electric)
	private let pikachu2 = Pokemon(id: "1", name: "Pikachu", height: 23, weight: 5, type: .electric)
	private let charmander = Pokemon(id: "2", name: "Charmander", height: 33, weight: 5, type: .fire)
	
	// MARK: - Life cycle -
	
	override func viewDidLoad() {
		super.viewDidLoad()
		example("Equatable", action: _equatableExample)
		example("Cases", action: _casesExample)
		example("Hash", action: _hashExample)
		example("Lenses", action: _lensesExample)
		example("JSON Serializable", action: _jsonSerializableExample)
	}
	
	// MARK: - Sourcery examples -
	
	private func _equatableExample() {
		print("pikachu1 == pikachu2: \(pikachu1 == pikachu2)")
		print("pikachu1 == charmander: \(pikachu1 == charmander)")
	}
	
	private func _casesExample() {
		print("There are \(PokemonType.count) Pokemon types: \(PokemonType.allCases)")
	}
	
	private func _hashExample() {
		print("pikachu1 hash: \(pikachu1.hashValue)")
		print("pikachu2 hash: \(pikachu2.hashValue)")
		print("charmander hash: \(charmander.hashValue)")
	}
	
	private func _lensesExample() {
		let pokemon = Pokemon.nameLens.set("Ash's Pikachu", pikachu1)
		print("Pikachu lense: \(pokemon.name)")
	}
	
	private func _jsonSerializableExample() {
		let charmanderJSON = charmander.toJSONObject()
		print("Charmander to JSON: \(charmanderJSON)")
		
		if let pokemon = Pokemon(JSONObject: charmanderJSON) {
			print("Charmander from JSON: \(pokemon)")
		} else {
			print("💩")
		}
	}
	
	// MARK: - Support code -
	
	public func example(_ description: String, action: () -> Void) {
		print("\n--- \(description) example ---")
		action()
	}

}

// MARK: - Extensions -

extension SampleViewController: SampleViewInterface {
	
	func showLoading() {
		
	}
	
	func hideLoading() {
		
	}
	
}
