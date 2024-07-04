//
//  BaseViewController.swift
//  lono
//
//  Created by Mac on 28/10/22.
//

import UIKit


class BaseViewController <T: BaseViewModel>: UIViewController {
    
    var viewModel: T!

    override func viewDidLoad() {
        super.viewDidLoad()
        //hideNavigationBar()
            self.addListener()
    }
    
    func addListener() {
//        viewModel.showHUD.bind { [weak self] (show) in
//            print("Show HUD")
//        }
    }
    
    
    
}
    


