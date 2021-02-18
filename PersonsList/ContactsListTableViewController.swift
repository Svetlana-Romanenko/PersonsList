//
//  ContactsListTableViewController.swift
//  PersonsList
//
//  Created by Светлана Романенко on 16.02.2021.
//

import UIKit

class ContactsListTableViewController: UITableViewController {

    var personList = Person.randomPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personContacts", for: indexPath)
        let person = personList[indexPath.row]
        
        cell.textLabel?.text = "\(person.name) \(person.surname)"
        
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactInfoVC = segue.destination as! ContactInfoViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let person = personList[indexPath.row]
        contactInfoVC.person = person
    }
}
