//
//  TabBuilder.swift
//  PokedexSample
//
//  Created by ichikawa7ss on 21/05/2020.
//  Copyright © 2020 ichikawa. All rights reserved.
//

import UIKit

enum TabBuilder {

    static func build() -> UIViewController {
        let view = TabViewController.instantiate()
        let presenter = TabPresenterImpl()
        let wireframe = TabWireframeImpl()

        view.presenter = presenter

        presenter.view = view
        presenter.wireframe = wireframe

        wireframe.viewController = view

        return view
    }
}
