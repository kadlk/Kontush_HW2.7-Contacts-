//
//  SectionPersonDetailsViewController.swift
//  Kontush_HW2.7(Contacts)
//
//  Created by Vadim Kontush on 10.11.21.
//

import UIKit

class SectionPersonViewController: UITabBarController {
    
    var adressBook: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Test \(adressBook[0].email)")
    }
}
