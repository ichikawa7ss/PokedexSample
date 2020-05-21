//
//  TabWireframe.swift
//  PokedexSample
//
//  Created by ichikawa7ss on 21/05/2020.
//  Copyright © 2020 ichikawa. All rights reserved.
//

import UIKit

protocol TabWireframe: AnyObject {}

final class TabWireframeImpl: TabWireframe {

    weak var viewController: UIViewController?
}
