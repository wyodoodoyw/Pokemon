//
//  PokemonDetailVC.swift
//  Pokemon
//
//  Created by Matthew Wood on 2016-12-14.
//  Copyright © 2016 Matthew Wood. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = pokemon.name
    }

}
