//
//  DataManager.swift
//  PersonsList
//
//  Created by Artem Bazhanov on 13.04.2021.
//

import Foundation

class DataManager {
    let name: [String]
    let surname: [String]
    let email: [String]
    let phone: [String]
    
    init() {
        self.name = [
            "Artem",
            "Boris"
            ]
        self.surname = [
            "surname1",
            "surname2"
            ]
        self.email = [
            "email1",
            "email2"
            ]
        self.phone = [
            "+7(900)000-00-01",
            "+7(900)000-00-02"
            ]
    }
    
}
