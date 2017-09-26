//
//  SampleInterfaces.swift
//  Sourcery
//
//  Created by Vedran Burojevic on 23/09/2017.
//  Copyright (c) 2017 Infinum. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

enum SampleNavigationOption {
}

protocol SampleWireframeInterface: WireframeInterface {
    func navigate(to option: SampleNavigationOption)
}

protocol SampleViewInterface: ViewInterface {
	func showLoading()
	func hideLoading()
}

protocol SamplePresenterInterface: PresenterInterface {
	func loadData()
}

protocol SampleInteractorInterface: InteractorInterface {
	func loadPokemons()
}
