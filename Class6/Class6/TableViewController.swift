//
//  TableViewController.swift
//  Class6
//
//  Created by syan k on 2024/7/19.
//

import UIKit

class TableViewController: UIViewController {
    
    let colors = ["Red", "Green", "Blue", "Teal"]
    
    let contacts = [
        Contact(imageName: "c1", name: "Poom A.", position: "Student"),
        Contact(imageName: "c2", name: "John Smith", position: "Student")
    ]
    
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
    }
    


}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
//        cell.textLabel?.text = colors[indexPath.row]
//
//        return cell
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as? ContactCell {
//            cell.nameLabel.text = contacts[indexPath.row].name
//            cell.positionLabel.text = contacts[indexPath.row].position
//            cell.profileImage.image = UIImage(named: contacts[indexPath.row].imageName)
            cell.set(contact: contacts[indexPath.row])
            return cell
        }
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
//        print("Section: \(indexPath.section) Row: \(indexPath.row)")
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "contactDetail") as? ContactDetailsViewController {
            vc.contact = contacts[indexPath.row]
            
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
