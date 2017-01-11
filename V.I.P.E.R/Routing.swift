//
//  Routing.swift
//  V.I.P.E.R
//
//  Created by Borja Rodriguez Sánchez on 10/1/17.
//  Copyright © 2017 Borja Rodriguez Sánchez. All rights reserved.
//

import Foundation

import UIKit

class Routing {
    
    let vc:TableViewController = TableViewController()
    let presenter = Presenter()
    let interactor = Interactor()
    var navigationController: UINavigationController?
    
    init() {
        vc.presenter = presenter
        presenter.view = vc
        presenter.interactor = interactor
        presenter.routing = self
        interactor.presenter = presenter
        navigationController = UINavigationController(rootViewController: vc)
    }
    
    func openAddView() {
        
        let storyBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let addVC:ViewController = storyBoard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        addVC.presenter = self.presenter
        
        vc.presentViewController(addVC, animated: true, completion: nil)
    }
}