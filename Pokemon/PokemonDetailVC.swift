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
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var defenceLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var pokedexIDLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var baseAttackLabel: UILabel!
    @IBOutlet weak var evolutionLabel: UILabel!
    @IBOutlet weak var currentEvolutionImage: UIImageView!
    @IBOutlet weak var nextEvolutionImage: UIImageView!
    
    
    var pokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = pokemon.name.capitalized
        
        let image = UIImage(named: "\(pokemon.pokedexID)")
        mainImage.image = image
        currentEvolutionImage.image = image
        
        pokedexIDLabel.text = "\(pokemon.pokedexID)"
        
        pokemon.downloadPokemonDetails {
            // will only be called after the network call is complete
            self.updateUI()
        }
    }
    
    func updateUI() {
        baseAttackLabel.text = pokemon.attack
        defenceLabel.text = pokemon.defence
        heightLabel.text = pokemon.height
        weightLabel.text = pokemon.weight
        typeLabel.text = pokemon.type
        
    }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
