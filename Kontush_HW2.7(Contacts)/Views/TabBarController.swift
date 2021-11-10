//
//  TabBarController.swift
//  Kontush_HW2.7(Contacts)
//
//  Created by Vadim Kontush on 10.11.21.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        sendData()
        super.viewDidLoad()
    }
}

extension TabBarController{
    private func sendData(){
        let adressBook = Person.getPersonsFixed(personCount: 15)
        
        guard let controllers = viewControllers else { return }
        for controller in controllers {
            if let personVC = controller as? PersonsViewController {
                personVC.adressBook = adressBook
            }
            if let sectionPersonVC = controller as? SectionPersonDetailsViewController{
                sectionPersonVC.adressBook = adressBook
            }
            }
        }
}


