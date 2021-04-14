//
//  Person.swift
//  PersonsList
//
//  Created by Artem Bazhanov on 13.04.2021.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
