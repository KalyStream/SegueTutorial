//
//  SecondViewController.swift
//  TotemizerWithSegue
//
//  Created by Kalybay Zhalgasbay on 23.04.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var totem = TotemModel()
    var totemImage: String?
    var totemName: String?
    var overview: String?
    @IBOutlet weak var totemImageView: UIImageView!
    @IBOutlet weak var totemNameLabel: UILabel!
    @IBOutlet weak var totemOverview: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let totemImage = totemImage else { return }
        totemImageView.image = UIImage(named: totemImage)
        totemNameLabel.text = totemName
        totemOverview.text = overview
    }
    
    @IBAction func dismissDidTap(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
