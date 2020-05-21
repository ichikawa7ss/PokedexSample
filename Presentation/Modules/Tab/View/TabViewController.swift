//
//  TabViewController.swift
//  PokedexSample
//
//  Created by ichikawa7ss on 21/05/2020.
//  Copyright © 2020 ichikawa. All rights reserved.
//

import UIKit

protocol TabView: AnyObject {}

// MARK: - Properties
final class TabViewController: UIViewController {

    var presenter: TabPresenter!
}

// MARK: - Life cycle
extension TabViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - TabView
extension TabViewController: TabView {
}
