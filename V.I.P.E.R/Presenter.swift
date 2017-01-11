//
//  Presenter.swift
//  V.I.P.E.R
//
//  Created by Borja Rodriguez Sánchez on 10/1/17.
//  Copyright © 2017 Borja Rodriguez Sánchez. All rights reserved.
//

import Foundation

import UIKit

class Presenter {
    var view:TableViewController?
    var interactor:Interactor?
    var routing:Routing?
    
    init() {
        
    }
    
    func addNewObjectWithData(name :String, surname :String) {
        
        interactor!.addNewPersonWithData(name,surname: surname)
    }
    
    func updateObjects(objects: [String]) {
        
        view!.setListWithObjects(objects)
    }
    
    func addNewObject() {
        
        routing!.openAddView()
    }
}