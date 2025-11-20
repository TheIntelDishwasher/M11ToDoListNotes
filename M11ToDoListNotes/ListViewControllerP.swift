//
//  ListViewControllerP.swift
//  M11ToDoListNotes
//
//  Created by Wagner, Randall D. on 11/17/25.
//

import UIKit

class ListViewControllerP: UIViewController {
    
    var toDoList: [String] = []
    
    @IBOutlet weak var toDoTableViewP: UITableView!
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
    func addItem(item: String) {
        toDoList.append(item)
        toDoTableViewP.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ListViewControllerP: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        cell.textLabel?.text = "\(toDoList[indexPath.row])"

        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
}
