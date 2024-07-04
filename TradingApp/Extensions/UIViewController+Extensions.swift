//
//  UIViewController+Extensions.swift
//  TradingApp
//
//  Created by Vipin kumar  on 02/07/24.
//

import UIKit

extension UIViewController {
    
    static func load<T: UIViewController>() -> T {
        T(nibName: String(describing: T.self), bundle: nil)
    }
}
