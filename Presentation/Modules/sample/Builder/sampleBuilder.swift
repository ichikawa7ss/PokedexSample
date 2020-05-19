//
//  sampleBuilder.swift
//  PokedexSample
//
//  Created by ichikawa7ss on 19/05/2020.
//  Copyright © 2020 ichikawa. All rights reserved.
//

import UIKit

enum sampleBuilder {

    static func build() -> UIViewController {
        let view = sampleViewController.instantiate()
        let presenter = samplePresenterImpl()
        let wireframe = sampleWireframeImpl()

        view.presenter = presenter

        presenter.view = view
        presenter.wireframe = wireframe

        wireframe.viewController = view

        return view
    }
}
