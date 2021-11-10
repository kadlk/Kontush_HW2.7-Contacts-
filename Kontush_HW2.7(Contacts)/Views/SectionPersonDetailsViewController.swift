//
//  SectionPersonDetailsViewController.swift
//  Kontush_HW2.7(Contacts)
//
//  Created by Vadim Kontush on 10.11.21.
//

import UIKit

class SectionPersonDetailsViewController: UITabBarController {

    var adressBook: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Test \(adressBook[0].email)")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
