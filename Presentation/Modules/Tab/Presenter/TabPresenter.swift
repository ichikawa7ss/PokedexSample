//
//  TabPresenter.swift
//  PokedexSample
//
//  Created by ichikawa7ss on 21/05/2020.
//  Copyright © 2020 ichikawa. All rights reserved.
//

import Foundation

protocol TabPresenter: AnyObject {}

final class TabPresenterImpl: TabPresenter {

    weak var view: TabView?
    var wireframe: TabWireframe!
}
