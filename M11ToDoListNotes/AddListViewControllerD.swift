//
//  AddListViewControllerD.swift
//  M11ToDoListNotes
//
//  Created by Wagner, Randall D. on 11/18/25.
//

import UIKit

class AddListViewControllerD: UIViewController {
    
    var delegate: ToDoDelegate?
    var listVC: ListTableViewControllerD?
    
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func cancel(_ sender: Any) {
        delegate?.addViewControllerDCancel?(self)
        dismiss(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        guard let text = inputField.text, !text.isEmpty else{
            showAlert()
            return
        }
        delegate?.addViewControllerD(self, didAddToDo: text)
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
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
