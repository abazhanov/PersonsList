//
//  FullListTableViewController.swift
//  PersonsList
//
//  Created by Artem Bazhanov on 14.04.2021.
//

import UIKit

class FullListTableViewController: UITableViewController {

    let dataManager = DataManager()
    
    var persons: [Person] {
        var persons: [Person] = []
        for index in 0...dataManager.name.count - 1 {
            persons.append(Person(name: dataManager.name[index], surname: dataManager.surname[index], email: dataManager.email[index], phone: dataManager.phone[index]))
        }
        return persons
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FullCell", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            cell.backgroundColor = .gray
            content.text = person.fullName
        case 1:
            content.text = person.email
            content.image = UIImage(systemName: "mail")
        default:
            content.secondaryText = person.phone
            content.image = UIImage(systemName: "phone")
        }
        
        cell.contentConfiguration = content

        return cell
    }
}
