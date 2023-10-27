//
//  SingleViewController.swift
//  NavigationPet
//
//  Created by Альберт Хайдаров on 27.10.2023.
//

import UIKit

class SingleViewController: UIViewController {

    var image: UIImage! {
        didSet {
            guard isViewLoaded else {return}
            imageView.image = image
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = image
    }
    


}
