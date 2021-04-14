//
//  DetailViewController.swift
//  PersonsList
//
//  Created by Artem Bazhanov on 13.04.2021.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "E-mail: \(person.email)"
        
        navigationItem.title = person.fullName
    }
}
