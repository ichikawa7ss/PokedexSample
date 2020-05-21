//
//  PokemonListWireframe.swift
//  PokedexSample
//
//  Created by ichikawa7ss on 21/05/2020.
//  Copyright © 2020 ichikawa. All rights reserved.
//

import UIKit

protocol PokemonListWireframe: AnyObject {}

final class PokemonListWireframeImpl: PokemonListWireframe {

    weak var viewController: UIViewController?
}
