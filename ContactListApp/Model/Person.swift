//
//  Person.swift
//  ContactListApp
//
//  Created by mac on 28.05.2023.
//

struct Person {
    let firstNames: String
    let lastNames: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstNames) \(lastNames)"
    }
}
extension Person {
    static func getPerson() -> [Person] {
        var contactList: [Person] = []
        
        for index in 0..<ContactsBase.contactListModel.names.count {
            let contact = Person(
                firstNames: ContactsBase.contactListModel.names[index],
                lastNames: ContactsBase.contactListModel.surnames[index],
                phoneNumber: ContactsBase.contactListModel.numbers[index],
                email: ContactsBase.contactListModel.emails[index] + "@cloud.com"
            )
        contactList.append(contact)
    }
    return contactList
}
}
