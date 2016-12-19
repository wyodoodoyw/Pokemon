//
//  Pokemon.swift
//  Pokemon
//
//  Created by Matthew Wood on 2016-12-07.
//  Copyright © 2016 Matthew Wood. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon {
    
    private var _name: String!
    private var _pokedexID: Int!
    private var _description: String!
    private var _type: String!
    private var _defence: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvolutionText: String!
    private var _pokemonURL: String!
    
    var name: String {
        
        return _name
    }
    
    var pokedexID: Int {
        
        return _pokedexID
    }
    
    init(name: String, pokedexID: Int) {
        
        self._name = name
        self._pokedexID = pokedexID
        
        // pokemon URL
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexID)/"
    }

    func downloadPokemonDetails(completed: DownloadComplete) {
        
        Alamofire.request(_pokemonURL).responseJSON {(response) in
        print(response.result)
        }
        
    }
}
