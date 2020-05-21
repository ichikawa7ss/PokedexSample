//
//  PokemonListBuilder.swift
//  PokedexSample
//
//  Created by ichikawa7ss on 21/05/2020.
//  Copyright © 2020 ichikawa. All rights reserved.
//

import UIKit

enum PokemonListBuilder {

    static func build() -> UIViewController {
        let view = PokemonListViewController.instantiate()
        let presenter = PokemonListPresenterImpl()
        let wireframe = PokemonListWireframeImpl()

        view.presenter = presenter

        presenter.view = view
        presenter.wireframe = wireframe

        wireframe.viewController = view

        return view
    }
}
