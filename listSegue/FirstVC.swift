//
//  FirstVC.swift
//  listSegue
//
//  Created by Ekene Akpati on 3/19/18.
//  Copyright © 2018 Ekene. All rights reserved.
//

import UIKit

class FirstVC: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
    }

    @IBAction func newListBttn(_ sender: Any) {
        if nameField.text != "" {
            performSegue(withIdentifier: "segue1", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var tempController = segue.destination as! ListVC
        tempController.name = nameField.text!.uppercased()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if nameField.text != "" {
            performSegue(withIdentifier: "segue1", sender: self)
        }
        return true
    }
    
}

