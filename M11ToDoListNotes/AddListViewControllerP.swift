//
//  AddListViewControllerP.swift
//  M11ToDoListNotes
//
//  Created by Wagner, Randall D. on 11/18/25.
//

import UIKit

class AddListViewControllerP: UIViewController {
    
    var newItem: String = ""
    
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        guard let item = inputField.text else { return }
        newItem = item
        dismiss(animated: true)
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
