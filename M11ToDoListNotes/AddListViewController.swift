//
//  AddListViewController.swift
//  M11ToDoListNotes
//
//  Created by Wagner, Randall D. on 11/11/25.
//

import UIKit

class AddListViewController: UIViewController {
    
    var delegate: ToDoDelegate?

    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func cancel(_ sender: Any) {
        delegate?.addViewControllerCancel?(self)
        dismiss(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        guard let text = inputField.text, !text.isEmpty else{
            showAlert()
            return
        }
        delegate?.addViewController(self, didAddToDo: text)
        dismiss(animated: true)
        
    }
    
    func showAlert(){
        let alertController = UIAlertController(title: "Error", message: "Please enter a list name", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (_) in
        }
        alertController.addAction(okAction)
        present(alertController, animated: true)
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
