//
//  ViewController.swift
//  Grade List
//
//  Created by Giyu Tomioka on 8/18/24.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var name: String = ""
    var grades: [Gradelist] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        getGrades()
    }

    func getGrades() {
            let url = "https://dl.dropboxusercontent.com/s/nsicnigp0xc8dxz/grades.json"
            
            AF.request(url).responseDecodable(of: StudentGrades.self) { response in
                switch response.result {
                case .success(let studentGrades):
                    self.name = studentGrades.name
                    self.grades = studentGrades.grades
                    self.tableView.reloadData()
                case .failure(let error):
                    print("Error fetching grades: \(error)")
                }
            }
        }
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grades.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GradesCell", for: indexPath) as! GradesCell

        let grade = grades[indexPath.row]
        cell.configure(with: grade)
        return cell
    }
}
