//
//  PersonsViewController.swift
//  Kontush_HW2.7(Contacts)
//
//  Created by Vadim Kontush on 10.11.21.
//

import UIKit

class PersonsViewController: UITableViewController {
    
    var adressBook: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(adressBook[0].fullName)
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        adressBook.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = adressBook[indexPath.row].fullName
        cell.contentConfiguration = content
        return cell
    }
    

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailsVC = segue.destination as? PersonDetailsViewController
        else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = adressBook[indexPath.row]
        personDetailsVC.person = person
    }
}
