//
//  PizzaViewController.swift
//  PizzaStore
//
//  Created by Леонид Шелудько on 22.12.2022.
//

import UIKit

class PizzaViewController: UIViewController {
    
    @IBOutlet weak var margaritaLabael: UILabel!
    @IBOutlet weak var peperoniLabel: UILabel!
    
    @IBOutlet weak var matagritaImg: UIImageView!
    @IBOutlet weak var peperoniImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func backMenuItemButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func margaritaAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "OptionsViewController") as! OptionsViewController
        if sender.tag == 1 {
            vc.updateNameLabel = margaritaLabael.text!
            vc.updateImg = matagritaImg.image!
        } else if sender.tag == 2 {
            vc.updateNameLabel = peperoniLabel.text!
            vc.updateImg = peperoniImg.image!
        }
        self.present(vc, animated: true)
    }
    
    @IBAction func peperoniAction(_ sender: Any) {
        
    }
    
}
