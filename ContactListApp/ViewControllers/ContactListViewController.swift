//
//  ContactListViewController.swift
//  ContactListApp
//
//  Created by mac on 27.05.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    let myContactList = Person.getPerson()
    
    //    // MARK: - Override methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myContactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = myContactList[indexPath.row] // добавили строки
        var infoInCell = cell.defaultContentConfiguration()
        infoInCell.text = contact.fullName
        cell.contentConfiguration = infoInCell
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let extenedVC = segue.destination as? ContactsInfoViewController else { return }
        guard let indexPath = tableView.indexPathsForSelectedRows, let indexPath = indexPath.first else { return }
        extenedVC.contact =  myContactList[indexPath.row]
    }
    
}

