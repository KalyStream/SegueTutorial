//
//  ViewController.swift
//  TotemizerWithSegue
//
//  Created by Kalybay Zhalgasbay on 23.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let animals: [String] = ["tigerPic", "crocPic", "panteraPic", "snakePic", "gorillaPic"]

    @IBOutlet weak var introTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        introTextLabel.text = "Find your Totem!"
    }

    @IBAction func totemGeneratorButton(_ sender: UIButton) {
        performSegue(withIdentifier: "Totem", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondVC = segue.destination as? SecondViewController {
            guard  let randomImage = animals.randomElement() else {
                return
            }
            secondVC.totemImage = randomImage
            switch(randomImage){
            case("tigerPic"):
                secondVC.totemName = "Tiger"
                secondVC.overview = "Sample totem description about tiger"
                secondVC.view.backgroundColor = .systemPink
            case("gorillaPic"):
                secondVC.totemName = "Gorilla"
                secondVC.overview = "Sample totem description about gorilla"
                secondVC.view.backgroundColor = .systemRed
            case("snakePic"):
                secondVC.totemName = "Snake"
                secondVC.overview = "Sample totem description about snake"
                secondVC.view.backgroundColor = .systemBlue
            case("crocPic"):
                secondVC.totemName = "Crocodile"
                secondVC.overview = "Sample totem description about crocodile"
                secondVC.view.backgroundColor = .white
            case("panteraPic"):
                secondVC.totemName = "Pantera"
                secondVC.overview = "Sample totem description about pantera"
                secondVC.view.backgroundColor = .gray
            default:
                break
            }
        }
    }
}

