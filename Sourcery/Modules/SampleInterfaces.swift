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

protocol SampleViewInterface: ViewInterface, AutoMockable {
	func showLoading()
	func hideLoading()
}

protocol SamplePresenterInterface: PresenterInterface, AutoMockable {
	func loadData()
}

protocol SampleInteractorInterface: InteractorInterface, AutoMockable {
	func loadPokemons()
}