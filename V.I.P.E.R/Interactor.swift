//
//  Interactor.swift
//  V.I.P.E.R
//
//  Created by Borja Rodriguez Sánchez on 10/1/17.
//  Copyright © 2017 Borja Rodriguez Sánchez. All rights reserved.
//

import Foundation

class Interactor{
    
    var presenter : Presenter?
    let dataBase : DataStore?
    
    
    init(){
            dataBase = DataStore()
    }
    func addNewPersonWithData(name: String, surname: String){
        
        if (name != "") && (surname != "") {
            
            let persona = Persona()
            persona.nombre = name
            persona.apellido = surname
            
            if (dataBase?.personas) != nil{
                dataBase?.personas?.append(persona)
            }else{
                dataBase?.personas = [Persona]()
                dataBase?.personas?.append(persona)
            }
            self.updateList()
        }
        
    }
    func updateList() {
        
        var arrayPersonas = [String]()
        for persona in dataBase!.personas! {
            
            arrayPersonas.append(persona.nombre! + " " + persona.apellido!)
        }
        
        presenter!.updateObjects(arrayPersonas)
    }
}