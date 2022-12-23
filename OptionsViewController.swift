//
//  OptionsViewController.swift
//  PizzaStore
//
//  Created by Леонид Шелудько on 23.12.2022.
//

import UIKit

class OptionsViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var updateNameLabel = ""
    
    @IBOutlet weak var pizzaImg: UIImageView!
    var updateImg = UIImage()
    
    @IBOutlet var switchArray: [UISwitch]!
    @IBOutlet var dopNameArray: [UILabel]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLabel.text = updateNameLabel
        self.pizzaImg.image = updateImg
        pizzaImg.contentMode =  .scaleAspectFit
    }
    

    
    @IBAction func goPayAction(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "ApplePayViewController") as! ApplePayViewController
        vc.modalPresentationStyle = .fullScreen
        
        var titlePrice = "1. \(nameLabel.text!) \n"
        var numberProduct = 2
        for i in 0..<switchArray.count {
            if switchArray[i].isOn {
                titlePrice += String(numberProduct) + ". " + dopNameArray[i].text! + "\n"
                numberProduct += 1
            }
        }
             print(titlePrice)
        vc.updateProductsLabel = titlePrice
        
        self.show(vc, sender: nil)
    }
    
}
