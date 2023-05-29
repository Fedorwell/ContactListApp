//
//  contactsListBase.swift
//  ContactListApp
//
//  Created by mac on 27.05.2023.
//
 
final class ContactsBase {
    
    static let contactListModel = ContactsBase()
    
    let names = [
        "Matt", "Ben", "Gary", "Will", "Harrison", "Cate", "Chris", "Jhonny", "Angelina", "Jeki"
    ].shuffled()
    
    let surnames = [
        "Damon", "Stiller", "Oldman", "Smith", "Ford", "Blanchett", "Pratt", "Depp", "Jolie", "Chan"
    ].shuffled()
    
    let numbers = [
        "+7-999-789-79-79", "+7-888-999-88-99", "+7-777-777-77-77", "+7-921-001-10-10", "+7-981-981-88-88", "+7-999-999-99-99", "+7-999-000-00-01", "+7-999-555-55-55", "+7-888-111-11-11", "+7-905-905-95-95"
    ].shuffled()
    
    let emails = ["jack_Sparrow", "S.Black", "Mrs._Smit", "shaolin _master", "indiana_jr", "MIB", "cate_rings", "burn_01", "partt_roket", "walter_mitty01"
    ].shuffled()
    
    private init() {}
}
