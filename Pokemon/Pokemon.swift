//
//  Pokemon.swift
//  Pokemon
//
//  Created by Matthew Wood on 2016-12-07.
//  Copyright © 2016 Matthew Wood. All rights reserved.
//

import Foundation

class Pokemon {
    
    private var _name: String!
    private var _pokedexID: Int!
    
    var name: String {
        
        return _name
    }
    
    var pokedexID: Int {
        
        return _pokedexID
    }
    
    init(name: String, pokedexID: Int) {
        
        self._name = name
        self._pokedexID = pokedexID
    }

}
