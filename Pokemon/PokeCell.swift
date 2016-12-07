//
//  PokeCell.swift
//  Pokemon
//
//  Created by Matthew Wood on 2016-12-07.
//  Copyright © 2016 Matthew Wood. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemon: Pokemon!
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        
        nameLabel.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexID)")
        
    }
    
}
