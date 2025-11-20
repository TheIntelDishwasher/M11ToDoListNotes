//
//  ToDoDelegate.swift
//  M11ToDoListNotes
//
//  Created by Wagner, Randall D. on 11/11/25.
//
import UIKit

//objective-c protocol
//swift protocol
@objc protocol ToDoDelegate{
    func addViewControllerD(_ vc: UIViewController, didAddToDo todo: String)
    @objc optional func addViewControllerDCancel(_ vc: UIViewController)
}
