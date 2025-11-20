//
//  AddListViewController.swift
//  M11ToDoListNotes
//
//  Created by Wagner, Randall D. on 11/11/25.
//

import UIKit

enum Key{
    case toDo
}

class AddListViewController: UIViewController {
    

    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        guard let text: String = inputField.text, !text.isEmpty else{
            showAlert()
            return
        }
        let center = NotificationCenter.default
        center.post(name: NSNotification.Name("toDoDidInsert"), object: nil, userInfo: ["todo":text])
        //delegate?.addViewController(self, didAddToDo: text)
        dismiss(animated: true)
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "Error", message: "Please enter a task", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
  
         
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
