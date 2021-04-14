//
//  ListViewController.swift
//  PersonsList
//
//  Created by Artem Bazhanov on 13.04.2021.
//

import UIKit

class ListViewController: UITableViewController {
    
    let dataManager = DataManager()

    var persons: [Person] {
        var persons: [Person] = []
        for index in 0...dataManager.name.count - 1 {
            persons.append(Person(name: dataManager.name[index], surname: dataManager.surname[index], email: dataManager.email[index], phone: dataManager.phone[index]))
        }
        return persons
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as? DetailViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        detailVC?.person = person
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        let person = persons[indexPath.row]
       
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
   
        cell.contentConfiguration = content

        return cell
    }
}
