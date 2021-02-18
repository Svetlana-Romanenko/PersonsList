//
//  ContactInfoViewController.swift
//  PersonsList
//
//  Created by Светлана Романенко on 17.02.2021.
//

import UIKit

class ContactInfoViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
        
        navigationItem.largeTitleDisplayMode = .never
        navigationItem.title = "\(person.name) \(person.surname)"
    }
}
