//
//  TransitToPokemonListWireframe.swift
//  PokedexSample
//
//  Created by ichikawa7ss on 21/05/2020.
//  Copyright © 2020 ichikawa. All rights reserved.
//

import UIKit

protocol TransitToPokemonListWireframe: AnyObject {

    var viewController: UIViewController? { get }

    // func pushPokemonList()
    // func presentPokemonList()
}

extension TransitToPokemonListWireframe {

    //func pushPokemonList() {
    //    let vc = PokemonListBuilder.build()
    //    self.viewController?.navigationController?.pushViewController(vc, animated: true)
    //}

    //func presentPokemonList() {
    //    let vc = PokemonListBuilder.build()
    //    self.viewController?.present(vc, animated: true, completion: nil)
    //}
}

//protocol PokemonListWireframeDelegate: AnyObject {}
