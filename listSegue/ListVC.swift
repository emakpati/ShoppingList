//
//  ListVC.swift
//  listSegue
//
//  Created by Ekene Akpati on 3/19/18.
//  Copyright © 2018 Ekene. All rights reserved.
//

import UIKit

class ListVC: UIViewController, UITextFieldDelegate {

//Properties
 var name = String()
    
//Outlets
    @IBOutlet weak var greetingLbl: UILabel!
    @IBOutlet weak var itemField: UITextField!
    @IBOutlet weak var listView: UITextView!
    
//Actions
    @IBAction func addBttn(_ sender: Any) {
        if let new_item = itemField.text {
            if itemField.text != "" {
                itemField.resignFirstResponder()
                itemField.text = ""
                listView.text.append("* \(new_item)\n")
            }
        }
    }
    @IBAction func clearBttn(_ sender: Any) {
        itemField.text = ""
        listView.text = ""
    }
    
//Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        itemField.delegate = self
        greetingLbl.text = name + "'S LIST"    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let new_item = itemField.text {
            if itemField.text != "" {
                itemField.resignFirstResponder()
                itemField.text = ""
                listView.text.append("* " + "\(new_item)\n")
            }
        }
        return true
    }
}
