//
//  SectionsContactListTableViewController.swift
//  PersonsList
//
//  Created by Светлана Романенко on 17.02.2021.
//

import UIKit

class SectionsContactListTableViewController: UITableViewController {

    var sectionsList = Person.randomPersonList()

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        sectionsList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        
        let person = sectionsList[indexPath.section]
        
        switch indexPath.row {
        case 0: cell.textLabel?.text = person.phone
        case 1: cell.textLabel?.text = person.email
        default: break
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let person = sectionsList[section]
        return "\(person.name) \(person.surname)"
    }
}

