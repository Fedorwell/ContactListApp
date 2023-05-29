//
//  ExtendContactListViewController.swift
//  ContactListApp
//
//  Created by mac on 27.05.2023.
//

import UIKit

final class ExtendContactListViewController: UITableViewController {
    
    var myContactList = Person.getPerson()
    
    // MARK: - Override methods

    override func numberOfSections(in tableView: UITableView) -> Int {
        myContactList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        myContactList[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)

        let contact = myContactList[indexPath.section]
        var infoInCell = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            infoInCell.image = UIImage(systemName: "phone.circle.fill")
            infoInCell.text = contact.phoneNumber
        default:
            infoInCell.image = UIImage(systemName: "envelope.circle.fill")
            infoInCell.text = contact.email
        }

        cell.contentConfiguration = infoInCell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
   



