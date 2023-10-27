//
//  ViewController.swift
//  NavigationPet
//
//  Created by Альберт Хайдаров on 27.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var navigationButton: UIButton!
   
    @IBOutlet weak var segueButton: UIButton!
    
    private let SegueId = "SegueId"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segueButton.addTarget(self, action: #selector(segue), for: .touchUpInside)
        
        navigationButton.addTarget(self, action: #selector(pushNavigation), for: .touchUpInside)
    }
    
    @objc func segue(_ sender: UIButton){
        performSegue(withIdentifier: SegueId, sender: segueButton)
    }

    @objc func pushNavigation(_ senser: UIButton){
        let aViewController = UIViewController()
        aViewController.view.backgroundColor = .red
        aViewController.title = "VC"
        navigationController?.title = aViewController.title
        //        aViewController.modalPresentationStyle = .currentContext
//      present(aViewController, animated: true)
 
       navigationController?.pushViewController(aViewController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueId" {
            let singleVC = segue.destination as! SingleViewController
           
        } else {
            super.prepare(for: segue, sender: sender)
        }
    }
}

