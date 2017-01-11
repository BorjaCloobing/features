//
//  Protocols.swift
//  V.I.P.E.R
//
//  Created by Borja Rodriguez Sánchez on 10/1/17.
//  Copyright © 2017 Borja Rodriguez Sánchez. All rights reserved.
//

import Foundation

protocol InteractorProtocolInput {
    
    func addNewPersonWithData(nombre:String, apellido:String)
}

protocol InteractorProtocolOutput {
    
    func updateObjects(objects:[String])
}