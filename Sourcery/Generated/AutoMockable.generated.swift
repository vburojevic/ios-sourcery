// Generated using Sourcery 0.8.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable line_length
// swiftlint:disable variable_name

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif










class SampleInteractorInterfaceMock: SampleInteractorInterface {

    //MARK: - loadPokemons

    var loadPokemonsCalled = false

    func loadPokemons() {
        loadPokemonsCalled = true
    }

}
class SamplePresenterInterfaceMock: SamplePresenterInterface {

    //MARK: - loadData

    var loadDataCalled = false

    func loadData() {
        loadDataCalled = true
    }

    //MARK: - viewDidLoad

    var viewDidLoadCalled = false

    func viewDidLoad() {
        viewDidLoadCalled = true
    }

    //MARK: - viewWillAppear

    var viewWillAppearAnimatedCalled = false
    var viewWillAppearAnimatedReceivedAnimated: Bool?

    func viewWillAppear(animated: Bool) {
        viewWillAppearAnimatedCalled = true
        viewWillAppearAnimatedReceivedAnimated = animated
    }

    //MARK: - viewDidAppear

    var viewDidAppearAnimatedCalled = false
    var viewDidAppearAnimatedReceivedAnimated: Bool?

    func viewDidAppear(animated: Bool) {
        viewDidAppearAnimatedCalled = true
        viewDidAppearAnimatedReceivedAnimated = animated
    }

    //MARK: - viewWillDisappear

    var viewWillDisappearAnimatedCalled = false
    var viewWillDisappearAnimatedReceivedAnimated: Bool?

    func viewWillDisappear(animated: Bool) {
        viewWillDisappearAnimatedCalled = true
        viewWillDisappearAnimatedReceivedAnimated = animated
    }

    //MARK: - viewDidDisappear

    var viewDidDisappearAnimatedCalled = false
    var viewDidDisappearAnimatedReceivedAnimated: Bool?

    func viewDidDisappear(animated: Bool) {
        viewDidDisappearAnimatedCalled = true
        viewDidDisappearAnimatedReceivedAnimated = animated
    }

}
class SampleViewInterfaceMock: SampleViewInterface {

    //MARK: - showLoading

    var showLoadingCalled = false

    func showLoading() {
        showLoadingCalled = true
    }

    //MARK: - hideLoading

    var hideLoadingCalled = false

    func hideLoading() {
        hideLoadingCalled = true
    }

}
