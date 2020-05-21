//
//  TransitToTabWireframe.swift
//  PokedexSample
//
//  Created by ichikawa7ss on 21/05/2020.
//  Copyright © 2020 ichikawa. All rights reserved.
//

import UIKit

protocol TransitToTabWireframe: AnyObject {

    var viewController: UIViewController? { get }

    // func pushTab()
    // func presentTab()
}

extension TransitToTabWireframe {

    //func pushTab() {
    //    let vc = TabBuilder.build()
    //    self.viewController?.navigationController?.pushViewController(vc, animated: true)
    //}

    //func presentTab() {
    //    let vc = TabBuilder.build()
    //    self.viewController?.present(vc, animated: true, completion: nil)
    //}
}

//protocol TabWireframeDelegate: AnyObject {}
