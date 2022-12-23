//
//  ApplePayViewController.swift
//  PizzaStore
//
//  Created by Леонид Шелудько on 23.12.2022.
//

import UIKit

class ApplePayViewController: UIViewController {
    
    @IBOutlet weak var productsLabel: UILabel!
    var updateProductsLabel = ""
    
    @IBOutlet weak var cardSwitch: UISwitch!
    @IBOutlet weak var nalSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigateBar()
        productsLabel.text = updateProductsLabel
    }
    
    fileprivate func navigateBar() {
        let navBar = UINavigationBar()
        let navItems = UINavigationItem()
        
        navItems.title = "Оплата"
        navBar.items = [navItems]
        navBar.frame = CGRect(x: 0, y: 50, width: view.frame.size.width, height: 44)
        navBar.barTintColor = .white
        view.addSubview(navBar)
    }

    
    @IBAction func wayPaySwitch(_ sender: UISwitch) {
        if sender.tag == 1 {
            nalSwitch.isOn = !cardSwitch.isOn
        } else {
            cardSwitch.isOn = !nalSwitch.isOn
        }
    }
    
    @IBAction func applePayAction(_ sender: Any) {
        let alert = UIAlertController(title: "Заказ оплачен!", message: "Доставят в течении 15 минут! Приятного апетита", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "ОК", style: .default) { _ in
            let story = UIStoryboard(name: "Main", bundle: nil)
            let vc = story.instantiateViewController(identifier: "MenuViewController") as! MenuViewController
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        }
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }
    
}
