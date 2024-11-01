//
//  ContactViewController.swift
//  class7
//
//  Created by syan k on 2024/7/26.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var contacts: [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        readJson()
    }
     
    func readJson() {
        guard let url = Bundle.main.url(forResource: "user+address", withExtension: "json") else {
            return }
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            let decoded = try decoder.decode([User].self, from: data)
            contacts = decoded
            
            tableView.reloadData()
        } catch {
            print("Error: \(error)")
        }
    }
}

extension ContactViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as? ContactCell {
            cell.set(contact: contacts[indexPath.row])
            
            return cell
        }
        return UITableViewCell()
    }
}
