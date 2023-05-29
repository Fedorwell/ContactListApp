//
//  ContactsInfoViewController.swift
//  ContactListApp
//
//  Created by mac on 27.05.2023.
//

import UIKit

final class ContactsInfoViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var contactPhoto: UIImageView!
    @IBOutlet weak var labelContactEmail: UILabel!
    @IBOutlet weak var labelPhoneNumber: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getInfoForUser(contact)
       
    }
}

//MARK: - Extension ContactsInfoViewController
extension ContactsInfoViewController {
    
    private func getInfoForUser(_ contact: Person) {
        title = contact.fullName
        labelPhoneNumber.text = contact.phoneNumber
        labelContactEmail.text = contact.email
        
        getTrueContactImage(contact)
    }
    
    private func getTrueContactImage(_ contact: Person) {
        
        switch contact.fullName {
        case "Matt Damon":
            contactPhoto.image = UIImage(named:"M.Damon")
        case "Ben Stiller":
            contactPhoto.image = UIImage(named: "B.Stiller")
        case "Gary Oldman":
            contactPhoto.image = UIImage(named: "G.Oldman")
        case "Will Smith":
            contactPhoto.image = UIImage(named: "W.Smith")
        case "Harrison Ford":
            contactPhoto.image = UIImage(named: "H.Ford")
        case "Cate Blanchett":
            contactPhoto.image = UIImage(named: "cate2")
        case "Chris Partt":
            contactPhoto.image = UIImage(named: "C.Partt")
        case "Jhonny Depp":
            contactPhoto.image = UIImage(named: "JD")
        case "Angelina Jolie":
            contactPhoto.image = UIImage(named: "image Angelina J.")
        case "Jeki Chan":
            contactPhoto.image = UIImage(named: "J.Chan")
            
        default: contactPhoto.image =  UIImage(named: "ios-contacts")
            
        }
    }
}
    

