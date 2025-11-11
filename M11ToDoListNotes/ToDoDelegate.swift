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
    func addViewController(_ vc: UIViewController, didAddToDo todo: String)
    @objc optional func addViewControllerCancel(_ vc: UIViewController)
}
